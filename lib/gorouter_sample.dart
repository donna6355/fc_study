import 'package:go_router/go_router.dart';
import './speed_dial_sample.dart';
import './freezed_sample.dart';
import './riverpod_sample.dart';
import './iamport_sample.dart';
import './media_query_sample.dart';
import 'animation_sample.dart';
import 'status_bar_test.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/asdf',
      builder: (ctx, state) => RiverPodSmp(),
    ),
    GoRoute(
      path: '/freezed',
      builder: (ctx, state) => const FreezedSample(),
    ),
    GoRoute(
      path: '/pay',
      builder: (ctx, state) => const Payment(),
    ),
    GoRoute(
      path: '/dial',
      builder: (ctx, state) => const DialApp(),
    ),
    GoRoute(
      path: '/mediaquery',
      builder: (ctx, state) => const MediaQueryTest(),
    ),
    GoRoute(
      path: '/',
      builder: (ctx, state) => const CustomExplicitSample(),
    ),
  ],
);

/*
  context.go('/freezed');
Navigating to a destination in GoRouter will replace the current stack of screens with the screens configured to be displayed for the destination route. 

  context.go('/freezed',extra: 'test')
  final String extraString = GoRouterState.of(context).extra! as String;
provide additional data along with navigation.

 */