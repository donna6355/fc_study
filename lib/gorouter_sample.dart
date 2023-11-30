import 'package:go_router/go_router.dart';
import './freezed_sample.dart';
import './riverpod_sample.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (ctx,state)=>RiverPodSmp(),
    ),
    GoRoute(
      path: '/freezed',
      builder: (ctx,state)=>const FreezedSample(),
    ),
  ],
);

/*
  context.go('/freezed');
Navigating to a destination in GoRouter will replace the current stack of screens with the screens configured to be displayed for the destination route. 
 */