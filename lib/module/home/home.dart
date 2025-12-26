import 'package:flutter/material.dart';
import 'package:meenmanam/module/home/category.dart';
import 'package:meenmanam/themes/image.dart';
import 'package:meenmanam/widget/fishlist.dart';
import 'package:meenmanam/widget/home_header.dart';
import 'package:meenmanam/widget/parallex_scrollview.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedCategoryIndex = 0;

  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Ordinary Burgers',
      'image': Images.logo,
      'rating': 4.9,
      'distance': '190m',
      'price': 17230,
    },
    {
      'name': 'Burger With Meat',
      'image': Images.logo,
      'rating': 4.9,
      'distance': '190m',
      'price': 17230,
    },
    {
      'name': 'Ordinary Burgers',
      'image': Images.logo,
      'rating': 4.9,
      'distance': '190m',
      'price': 17230,
    },
    {
      'name': 'Burger With Meat',
      'image': Images.logo,
      'rating': 4.9,
      'distance': '190m',
      'price': 17230,
    },
    {
      'name': 'Ordinary Burgers',
      'image': Images.logo,
      'rating': 4.9,
      'distance': '190m',
      'price': 17230,
    },
    {
      'name': 'Burger With Meat',
      'image': Images.logo,
      'rating': 4.9,
      'distance': '190m',
      'price': 17230,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParallexScrollview(
        headerWidget: HomeHeader(),
        childWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Category(
                    selectedCategoryIndex: selectedCategoryIndex,
                    onTapped:
                        (ind) => setState(() {
                          selectedCategoryIndex = ind;
                        }),
                  ),
                ],
              ),
            ),
            if (foodItems.isNotEmpty) FishList(fishList: foodItems),
          ],
        ),
      ),
    );
  }
}
