import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meenmanam/navigation/bottom_tab_bar.dart';
import 'package:meenmanam/common/constant.dart';

class MainScreen extends StatefulWidget {
  final Widget child;
  const MainScreen({super.key, required this.child});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateCurrentIndex();
    });
  }

  void _updateCurrentIndex() {
    try {
      final location = GoRouterState.of(context).uri.path;
      int newIndex = 0;

      switch (location) {
        case RouteConstant.home:
          newIndex = 0;
          break;
        case RouteConstant.liked:
          newIndex = 1;
          break;
        case RouteConstant.cart:
          newIndex = 2;
          break;
        case RouteConstant.profile:
          newIndex = 3;
          break;
        default:
          newIndex = 0;
      }

      if (_currentIndex != newIndex && mounted) {
        setState(() {
          _currentIndex = newIndex;
        });
      }
    } catch (e) {
      // Handle any errors gracefully
      print('Error updating current index: $e');
    }
  }

  Future<void> _handleLogout() async {
    // await widget.loginStore.logout();
    if (mounted) {
      //  context.go('/signup');
    }
  }

  Future<void> _onTabTapped(
    int currentIndex,
    String route,
    bool isDrawer,
  ) async {
    if (isDrawer) {
      Navigator.pop(context);
    }
    setState(() {
      _currentIndex = currentIndex;
    });
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    // Update current index based on current route
    _updateCurrentIndex();

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: BottomTabBar(
          selectedInd: _currentIndex,
          onTapped: (ind, route) => _onTabTapped(ind, route, false),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
