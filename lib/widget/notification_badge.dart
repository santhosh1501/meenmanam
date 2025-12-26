import 'package:flutter/material.dart';
import 'package:meenmanam/themes/colors.dart';

class NotificationBadge extends StatelessWidget {
  final int count;
  final double size;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? child;

  const NotificationBadge({
    super.key,
    required this.count,
    this.size = 20.0,
    this.backgroundColor,
    this.textColor,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (child != null) child!,
        if (count > 0)
          Positioned(
            right: -8,
            top: -8,
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.red,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Center(
                child: Text(
                  count > 99 ? '99+' : count.toString(),
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: size * 0.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
