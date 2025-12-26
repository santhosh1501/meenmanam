import 'package:flutter/material.dart';
import 'package:meenmanam/common/constant.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:meenmanam/themes/image.dart';

// Add this at the top of the file, outside any class
final ValueNotifier<bool> isBottomSheetVisible = ValueNotifier<bool>(false);

class BottomTabBar extends StatefulWidget {
  int selectedInd;
  final Function(int, String)? onTapped;

  static void showBottomSheet() {
    isBottomSheetVisible.value = true;
  }

  static void hideBottomSheet() {
    isBottomSheetVisible.value = false;
  }

  BottomTabBar({super.key, this.onTapped, required this.selectedInd});

  @override
  State<BottomTabBar> createState() => _BottomTabBar();
}

class _BottomTabBar extends State<BottomTabBar> with TickerProviderStateMixin {
  final List<AnimationController> _controllers = [];
  final List<Animation<double>> _scaleAnimations = [];
  final List<Animation<double>> _opacityAnimations = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      _controllers.add(
        AnimationController(
          duration: const Duration(milliseconds: 100),
          vsync: this,
        ),
      );

      _scaleAnimations.add(
        Tween<double>(begin: 1.0, end: 0.95).animate(
          CurvedAnimation(
            parent: _controllers[i],
            curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
          ),
        ),
      );

      _opacityAnimations.add(
        Tween<double>(begin: 1.0, end: 0.7).animate(
          CurvedAnimation(
            parent: _controllers[i],
            curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(BottomTabBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedInd != widget.selectedInd) {
      debugPrint('BottomTabBar index changed to: ${widget.selectedInd}');
    }
  }

  final List<Map<String, dynamic>> pages = [
    {
      "label": "Home",
      "icon": Icons.home_outlined,
      "activeIcon": Icons.home,
      "route": RouteConstant.home,
    },
    {
      "label": "Liked",
      "icon": Icons.favorite_border,
      "activeIcon": Icons.favorite,
      "route": RouteConstant.liked,
    },
    {
      "label": "Cart",
      "icon": Icons.shopping_cart_outlined,
      "activeIcon": Icons.shopping_cart,
      "route": RouteConstant.cart,
    },
    {
      "label": "Profile",
      "icon": Icons.person_outline,
      "activeIcon": Icons.person,
      "route": RouteConstant.profile,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isBottomSheetVisible,
      builder: (context, isVisible, child) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: isVisible ? 0 : 68,
          decoration: BoxDecoration(
            color: AppColors.primary,
            border: Border(
              top: BorderSide(
                color: AppColors.primary.withOpacity(0.3),
                width: 1,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
                pages.asMap().entries.map((entry) {
                  final index = entry.key;
                  final row = entry.value;
                  final isSelected = widget.selectedInd == index;
                  return Expanded(
                    child: GestureDetector(
                      onTap:
                          () => {
                            if (widget.selectedInd != index)
                              {widget.onTapped!(index, row['route'])},
                          },
                      behavior: HitTestBehavior.opaque,
                      child: AnimatedBuilder(
                        animation: _controllers[index],
                        builder: (context, child) {
                          return Transform.scale(
                            scale: _scaleAnimations[index].value,
                            child: Opacity(
                              opacity: _opacityAnimations[index].value,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Center(
                                  child: Icon(
                                    isSelected
                                        ? row['activeIcon']
                                        : row['icon'],
                                    size: 28,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }).toList(),
          ),
        );
      },
    );
  }
}
