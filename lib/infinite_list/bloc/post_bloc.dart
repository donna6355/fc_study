import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_event_transformers/bloc_event_transformers.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../models/post.dart';

part 'post_event.dart';
part 'post_state.dart';

const throttleDuration = Duration(milliseconds: 100);

const _postLimit = 20;

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({required this.httpClient}) : super(const PostState()) {
    on<PostFetched>(
      _onPostFetched,
      transformer: throttle(throttleDuration),
    );
  }
  final http.Client httpClient;

  Future<void> _onPostFetched(
    PostFetched event,
    Emitter<PostState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == PostStatus.initial) {
        final posts = await _fetchPosts();
        return emit(state.copyWith(
          status: PostStatus.success,
          posts: posts,
          hasReachedMax: false,
        ));
      }
      final posts = await _fetchPosts(startIdx: state.posts.length);
      emit(
        posts.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : state.copyWith(
                status: PostStatus.success,
                posts: List.of(state.posts)..addAll(posts),
                hasReachedMax: false,
              ),
      );
    } catch (_) {
      emit(state.copyWith(status: PostStatus.failure));
    }
  }

  Future<List<Post>> _fetchPosts({int startIdx = 0}) async {
    final res = await httpClient.get(Uri.https(
      'jsonplaceholder.typicode.com',
      '/posts',
      <String, String>{'_start': '$startIdx', '_limit': '$_postLimit'},
    ));
    if (res.statusCode == 200) {
      final body = json.decode(res.body) as List;
      return body.map((json) {
        final map = json as Map<String, dynamic>;
        return Post(
            id: map['id'] as int,
            title: map['title'] as String,
            body: map['body'] as String);
      }).toList();
    }
    throw Exception('error fetching posts');
  }
}
