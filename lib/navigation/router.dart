import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meenmanam/common/constant.dart';
import 'package:meenmanam/module/cart/cart.dart';
import 'package:meenmanam/module/home/home.dart';
import 'package:meenmanam/module/liked/liked.dart';
import 'package:meenmanam/module/login/login.dart';
import 'package:meenmanam/module/onboardscreen/onboard_screen.dart';
import 'package:meenmanam/module/profile/profile.dart';
import 'package:meenmanam/navigation/main_screen.dart';
import 'package:meenmanam/navigation/transition.dart';
import 'package:meenmanam/widget/map_view.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRoutes {
  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteConstant.onboard,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final isLoggedIn = false;
      return null;
    },
    routes: [
      GoRoute(
        path: RouteConstant.onboard,
        builder: (context, state) {
          return const OnboardScreen();
        },
      ),
      GoRoute(
        path: RouteConstant.login,
        builder: (context, state) {
          return const Login();
        },
      ),
      GoRoute(
        path: RouteConstant.mapview,
        builder: (context, state) {
          final type = state.extra as Map<String, dynamic>? ?? {};
          return OSMMapPage(type: type);
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) {
          return MainScreen(child: child);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConstant.home,
                pageBuilder:
                    (context, state) => FadeTransitionPage(
                      key: state.pageKey,
                      child: const Home(),
                    ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConstant.liked,
                pageBuilder:
                    (context, state) => FadeTransitionPage(
                      key: state.pageKey,
                      child: const Liked(),
                    ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConstant.cart,
                pageBuilder:
                    (context, state) => FadeTransitionPage(
                      key: state.pageKey,
                      child: const Cart(),
                    ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteConstant.profile,
                pageBuilder: (context, state) {
                  final user = state.extra as Map<String, dynamic>? ?? {};
                  return FadeTransitionPage(
                    key: state.pageKey,
                    child: Profile(user: user),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
