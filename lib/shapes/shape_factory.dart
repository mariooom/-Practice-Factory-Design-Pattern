import 'shape.dart';
import 'circle.dart';
import 'rectangle.dart';
import 'square.dart';

class ShapeFactory {
  Shape getShape(String shapeType) {
    switch (shapeType.toLowerCase()) {
      case 'circle':
        return Circle();
      case 'rectangle':
        return Rectangle();
      case 'square':
        return Square();
      default:
        throw Exception("Shape type not found");
    }
  }
}