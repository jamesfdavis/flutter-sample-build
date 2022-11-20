import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  const ProductManager({super.key, required this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductManager oldWidget) {
    //Data in the old widget.
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(10.0),
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                _products.add('Food Tester Two');
              });
            },
            child: const Text('Add Product')),
      ),
      Products(_products)
    ]);
  }
}
