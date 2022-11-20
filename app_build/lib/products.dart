import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  const Products({super.key, this.products = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpeg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
