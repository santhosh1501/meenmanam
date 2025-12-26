import 'package:flutter/material.dart';
import 'package:meenmanam/module/styles.dart';
import 'package:meenmanam/themes/colors.dart';

class CartList extends StatefulWidget {
  final List cartItem;
  const CartList({super.key, required this.cartItem});
  @override
  State<StatefulWidget> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    final cartItem = widget.cartItem;
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 5, bottom: 5),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cartItem.length,
      itemBuilder: (context, index) {
        final item = cartItem[index];
        return Container(
          margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
          decoration: Styles.cartContanerStyle,
          child: InkWell(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    item['image'],
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '\$${item['price']}',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildQuantityStepper(item),
                          IconButton(
                            icon: const Icon(
                              Icons.delete_forever,
                              color: AppColors.primary,
                            ),
                            onPressed: () {
                              setState(() {
                                cartItem.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildQuantityStepper(Map<String, dynamic> item) {
    return Row(
      children: [
        SizedBox(
          width: 28,
          height: 28,
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () {
              if (item['quantity'] > 0.5) {
                setState(() => item['quantity'] -= 0.5);
              }
            },
            backgroundColor: Colors.grey[200],
            elevation: 0,
            child: const Icon(Icons.remove, size: 16, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            '${item['quantity']}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        SizedBox(
          width: 28,
          height: 28,
          child: FloatingActionButton(
            heroTag: null,
            onPressed: () => setState(() => item['quantity'] += 0.5),
            backgroundColor: Colors.grey[200],
            elevation: 0,
            child: const Icon(Icons.add, size: 16, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
