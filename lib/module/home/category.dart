import 'package:flutter/material.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:meenmanam/themes/image.dart';

class Category extends StatelessWidget {
  final Function(int)? onTapped;
  final int selectedCategoryIndex;

  final List<Map<String, dynamic>> categories = [
    {'icon': Images.logo, 'name': 'All'},
    {'icon': Images.logo, 'name': 'Fish'},
    {'icon': Images.logo, 'name': 'Crab'},
    {'icon': Images.logo, 'name': 'Shrimp'},
    {'icon': Images.logo, 'name': 'Squid'},
  ];

  Category({super.key, this.onTapped, required this.selectedCategoryIndex});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            categories.asMap().entries.map((entry) {
              int idx = entry.key;
              var category = entry.value;
              return GestureDetector(
                onTap: () => onTapped!(idx),
                child: Container(
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color:
                        idx == selectedCategoryIndex
                            ? AppColors.primary
                            : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        category['icon'],
                        width: 30,
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 8),
                      Text(
                        category['name'],
                        style: TextStyle(
                          color:
                              idx == selectedCategoryIndex
                                  ? Colors.white
                                  : Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
