import 'dart:html';

import 'dart:math';

class ClosedPath {
  List<Point> _point = [];

  moveTo(Point point) {
    _point = [point];
  }

  lineTo(Point point) {
    _point.add(point);
  }
}

void main(List<String> args) {
  final path = ClosedPath()
    ..moveTo(Point(0, 0))
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0));
}
