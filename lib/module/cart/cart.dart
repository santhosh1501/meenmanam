import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meenmanam/common/constant.dart';
import 'package:meenmanam/module/cart/cart_list.dart';
import 'package:meenmanam/module/styles.dart';
import 'package:meenmanam/widget/home_header.dart';
import 'package:meenmanam/widget/parallex_scrollview.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<Map<String, dynamic>> cartItem = [
    {
      'name': 'Burger With Meat',
      'image':
          'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'price': 17230,
      'select': false,
      'quantity': 1.0,
    },
    {
      'name': 'Ordinary Burgers',
      'image':
          'https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U',
      'price': 17230,
      'select': true,
      'quantity': 2.0,
    },
    {
      'name': 'Burger With Meat',
      'image': 'https://picsum.photos/id/237/200/300',
      'price': 17230,
      'select': false,
      'quantity': 1.0,
    },
    {
      'name': 'Ordinary Burgers',
      'image': 'https://picsum.photos/id/237/200/300',
      'price': 17230,
      'select': true,
      'quantity': 2.0,
    },
  ];

  void onOdered() {
    context.go(RouteConstant.mapview, extra: {'type': 'cart'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParallexScrollview(
        headerWidget: HomeHeader(),
        childWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: Styles.paddingSpace20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Delivery Location', style: Styles.greyTextStyle),
                  ElevatedButton(
                    style: Styles.buttonStyle,
                    onPressed:
                        () => context.go(
                          RouteConstant.mapview,
                          extra: {'type': 'cart'},
                        ),
                    child: Text('Change location', style: Styles.locationText),
                  ),
                ],
              ),
            ),
            CartList(cartItem: cartItem),
            Container(
              margin: Styles.marginSpace20,
              padding: EdgeInsets.all(12),
              decoration: Styles.cartsummaryContanerStyle,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Summary', style: Styles.titleTextStyles),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Items (3)', style: Styles.summaryText),
                      Text('450', style: Styles.titleTextStyles),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery Fee', style: Styles.summaryText),
                      Text('Free', style: Styles.titleTextStyles),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Discount', style: Styles.summaryText),
                      Text('-50', style: Styles.discountTextStyles),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total', style: Styles.summaryText),
                      Text('400', style: Styles.titleTextStyles),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: Styles.marginSpace50,
              width: Styles.width(context),
              height: 48,
              child: ElevatedButton(
                style: Styles.orderButtonStyle,
                onPressed: () => onOdered(),
                child: Text('Order Now', style: Styles.orderTextStyles),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
