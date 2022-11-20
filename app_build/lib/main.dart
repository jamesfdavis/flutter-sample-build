import 'package:flutter/material.dart';

import './products_manager.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Theme Stuff",
      theme: ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.orange,
        primarySwatch: Colors.deepOrange,
        secondaryHeaderColor: Colors.orange,
        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Easy List'),
        ),
        body: const ProductManager("startingProduct")
      ),
    );
  }
}
