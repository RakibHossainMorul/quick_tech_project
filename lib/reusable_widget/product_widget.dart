import 'package:flutter/material.dart';

class ProductViewWidget extends StatelessWidget {
  final String imageUrl;
  final String date;
  final double price;
  final String title;

  const ProductViewWidget({
    Key? key,
    required this.imageUrl,
    required this.date,
    required this.price,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 130,
            width: double.infinity,
          ),
          // const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(date),
                Text('\$${price.toStringAsFixed(2)}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
