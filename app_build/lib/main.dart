import 'package:flutter/material.dart';

import './products_manager.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();

    return MaterialApp(
      title: "Some Stuff",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Easy List'),
        ),
        body: const ProductManager('Food Tester'),
      ),
    );
  }
}
