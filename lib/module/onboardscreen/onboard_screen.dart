import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meenmanam/common/constant.dart';
import 'package:meenmanam/module/styles.dart';
import 'package:meenmanam/themes/image.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> onboadinglist = [
    {
      "title": "We serve\nincomparable\ndelicacies",
      "subtiltle":
          "All the best restaurants with their top menu waiting for you, they can\'t wait for your order!!",
    },
    {
      "title": "We serve\nincomparable\ndelicacies",
      "subtiltle":
          "All the best restaurants with their top menu waiting for you, they can\'t wait for your order!!",
    },
    {
      "title": "We serve\nincomparable\ndelicacies",
      "subtiltle":
          "All the best restaurants with their top menu waiting for you, they can\'t wait for your order!!",
    },
  ];

  @override
  void initState() {
    super.initState();
    print("selectedIndex: $selectedIndex");
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
    print("New selectedIndex: $selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(Images.onboarding, fit: BoxFit.fill),
          ),
          Positioned(
            bottom: 100,
            left: 24,
            right: 24,
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: Styles.containerStyle,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    onboadinglist[selectedIndex]['title'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    onboadinglist[selectedIndex]['subtiltle'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.6),
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 34),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: selectedIndex == 0 ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: selectedIndex == 1 ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        width: selectedIndex == 2 ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 34),
                  selectedIndex == 2
                      ? InkWell(
                        onTap: () => context.go(RouteConstant.login),
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Color(0xFFFF8C00),
                            size: 24,
                          ),
                        ),
                      )
                      : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () => context.go(RouteConstant.login),
                            child: Text('Skip', style: Styles.skipTextStyles),
                          ),
                          InkWell(
                            onTap:
                                () => {
                                  if (selectedIndex != 2)
                                    {
                                      setState(() {
                                        selectedIndex = selectedIndex + 1;
                                      }),
                                    },
                                },
                            child: Text('Next', style: Styles.skipTextStyles),
                          ),
                        ],
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
