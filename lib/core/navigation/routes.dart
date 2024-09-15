import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/sign_in_screen.dart';
import '../utils/constants/routes_name.dart';

abstract class Routes {
  static GoRouter configurations = GoRouter(
    initialLocation: RoutesName.signIn,
    routes: [
      GoRoute(
        path: RoutesName.signIn,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const SignInScreen(),
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      ),
    ],
  );
}
