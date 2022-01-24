import 'package:equatable/equatable.dart';

//? Equatable should only be used on immutable objec.
class Point extends Equatable {
  Point(this.x, this.y);
  final double x;
  final double y;

  @override
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;

  // no longer needed since equatable handles the to string method
  // @override
  // String toString() {
  //   return "Point($x, $y)";
  // }

  //* no loner needed since equatable does the job
  // @override
  // int get hashCode => super.hashCode;

  /// Operator overload
  /// operator overload allows us to define how and opeartor work when it
  /// is applied to a new type
  // @override
  // bool operator ==(Object other) {
  //   if (other is Point) {
  //     return x == other.x && y == other.y;
  //   } else {
  //     return false;
  //   }
  // }
  //* print(Point(2, 3) == Point(2, 3)); returns true;

  //* print(Point(9, 3) == "9:3"); return false
  //* Dart shouldn't allow us to even check Points Types with Strings Types
  //* This can be solved by using covarient

  //* no loner needed since equatable does the job
  // @override
  // bool operator ==(covariant Point other) {
  //   return x == other.x && y == other.y;
  // }

  ///* print(Point(9, 3) == "9:3"); won't compile again because dart is now sure it is point
  ///* now it return the error message ==> The argument type 'String' can't be
  ///* assigned to the parameter type 'Point?'.

  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) => Point(x * other, y * other);
}

void main(List<String> args) {
  print(Point(2, 3) == Point(2, 3));
  print(Point(1, 1) + Point(2, 0)); // should print Point(3,1)
  print(Point(2, 1) * 5); //  should print Point(10, 5)
  //? Testing equatable
  print(Point(5, 5) == Point(5, 5));
}
