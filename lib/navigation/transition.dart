import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideTransitionPage<T> extends CustomTransitionPage<T> {
  SlideTransitionPage({
    required LocalKey key,
    required Widget child,
    Offset beginOffset = const Offset(0.0, 1.0), // Default: Slide from right
    Duration duration = const Duration(milliseconds: 300),
    Duration reverseDuration = const Duration(milliseconds: 300),
    bool opaque = false,
    bool barrierDismissible = true,
  }) : super(
         key: key,
         child: child,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           final tween = Tween(begin: beginOffset, end: Offset.zero);
           final offsetAnimation = animation.drive(tween);

           return SlideTransition(position: offsetAnimation, child: child);
         },
         transitionDuration: duration,
         reverseTransitionDuration: reverseDuration,
         opaque: opaque,
         barrierDismissible: barrierDismissible,
       );
}

class FadeTransitionPage<T> extends CustomTransitionPage<T> {
  FadeTransitionPage({
    required LocalKey key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 300),
    Duration reverseDuration = const Duration(milliseconds: 300),
    bool opaque = false,
    bool barrierDismissible = true,
  }) : super(
         key: key,
         child: child,
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return FadeTransition(opacity: animation, child: child);
         },
         transitionDuration: duration,
         reverseTransitionDuration: reverseDuration,
         opaque: opaque,
         barrierDismissible: barrierDismissible,
       );
}
