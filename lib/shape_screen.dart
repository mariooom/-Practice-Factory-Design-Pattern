import 'package:flutter/material.dart';
import 'package:shape_factory/shapes/shape.dart';
import 'package:shape_factory/shapes/shape_factory.dart';

class ShapeScreen extends StatelessWidget {
  final ShapeFactory shapeFactory = ShapeFactory();

  void _showSnackBar(BuildContext context, String shapeType) {
    Shape shape = shapeFactory.getShape(shapeType);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(shapeType.toUpperCase()),
        action: SnackBarAction(
          label: 'Reveal',
          onPressed: () {
            shape.revealMe();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Shape Factory Demo',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildShapeCard(context, 'Circle'),
            _buildShapeCard(context, 'Rectangle'),
            _buildShapeCard(context, 'Square'),
          ],
        ),
      ),
    );
  }

  Widget _buildShapeCard(BuildContext context, String shapeType) {
    return Card(
      margin: EdgeInsets.all(16),
      child: InkWell(
        onTap: () => _showSnackBar(context, shapeType),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 173, 210, 229),
              border: Border.all(style: BorderStyle.solid)),
          padding: EdgeInsets.all(24),
          child: Center(
            child: Text(
              shapeType,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
