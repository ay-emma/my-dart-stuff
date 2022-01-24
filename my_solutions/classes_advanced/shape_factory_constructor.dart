import 'dart:math';

//* This is an inheristance
abstract class Shape {
  const Shape();
  double get area;
  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError("Invalid or missing side property");
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError(
            "Invalid or missing radius property, ensuer value is of type double");
      default:
        throw UnimplementedError("the value of type $type is not implemented ");
    }
  }
}

// * Square inherites from shape
class Square extends Shape {
  const Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  const Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> args) {
  final shapeJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 20.0,
    }
  ];

  final shapes = shapeJson.map((e) => Shape.fromJson(e));
  shapes.forEach(printArea);
}
