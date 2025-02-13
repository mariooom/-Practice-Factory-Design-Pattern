import 'package:flutter/material.dart';
import 'package:shape_factory/shape_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shape Factory Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShapeScreen(),
    );
  }
}
