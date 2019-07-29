import 'package:calc/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Standard Calc",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}
