import 'package:flutter/material.dart';
import 'package:wsnshop_mobile/models/product.dart';

class ProductViewPage extends StatelessWidget {
  final Product product;

  const ProductViewPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Price: ${product.fields.price}",
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Desc: ${product.fields.description}",
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
