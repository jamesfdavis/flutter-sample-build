import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  const ProductControl({super.key, required this.addProduct});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addProduct("Sweets");
      },
      child: const Text('Add Product'),
    );
  }
}
