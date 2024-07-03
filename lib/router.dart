import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/signup/views/addDetails/addDetailsscreen.dart';
import 'features/signup/views/login/loginscreen.dart';
import 'features/splash/views/splash/splashscreen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        name: 'Splash',
        path: '/',
        pageBuilder: (context, state) => CustomTransitionPage(
            transitionDuration: const Duration(seconds: 2),
            child: const SplashScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            }),
      ),
      GoRoute(
          name: 'login',
          path: '/login',
          pageBuilder: (context, state) => CustomTransitionPage(
              transitionDuration: const Duration(seconds: 2),
              child: const LoginScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              })),
      GoRoute(
        name: 'addDetails',
        path: '/addDetails',
        pageBuilder: (context, state) =>
            const MaterialPage(child: AddDetailsScreen()),
      ),
    ],
  );
}
