import 'package:flutter/material.dart';
import 'package:meenmanam/themes/image.dart';
import 'package:meenmanam/widget/fishlist.dart';
import 'package:meenmanam/widget/home_header.dart';
import 'package:meenmanam/widget/parallex_scrollview.dart';

class Liked extends StatefulWidget {
  const Liked({super.key});

  @override
  State<Liked> createState() => _LikedState();
}

class _LikedState extends State<Liked> {
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
          children: [if (foodItems.isNotEmpty) FishList(fishList: foodItems)],
        ),
      ),
    );
  }
}
