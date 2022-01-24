import 'dart:math';

//* This is an inheristance
abstract class Shape {
  double get area;
}

// * Square inherites from shape
class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

printArea(Shape shape) {
  print(shape.area);
}

void main(List<String> args) {
  final Shape square = Square(10);
  printArea(square);
  final Shape circle = Circle(8);
  printArea(circle);

  final shapes = [Square(9), Circle(20)];

  shapes.forEach((shape) => printArea(shape));
}
