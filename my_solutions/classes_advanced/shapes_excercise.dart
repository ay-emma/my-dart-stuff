import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  printValue() {
    print("Area : $area  and Peremeter : $perimeter ");
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  List<Shape> shapes = [
    Square(5),
    Circle(12),
    Square(7),
  ];

  shapes.forEach((element) {
    element.printValue();
  });
}
