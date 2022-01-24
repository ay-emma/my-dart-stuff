void main() {
  List food = ['pandi', 'amala', 'semo'];
  //? This is cool to do || dart is implicityly parsing x in the anonymous function
  food.forEach(print);

  final numbers = [1, 2, 3, 4];

  final doubledata = doubler(numbers);
  final doubledatawithTransformer = transformer(numbers, (k) => k * 2);
  final moreThanDouble = multiform<int, double>(numbers, (p) => p * 3.0);
  print(doubledata);
  print(doubledatawithTransformer);
  print(moreThanDouble);
}

List<R> multiform<T, R>(List<T> data, R Function(T) f) {
  List<R> result = [];
  for (var i in data) {
    result.add(f(i));
  }
  return result;
}

// in situation where we don't know how the user wants to transform a function
List<int> transformer(List<int> data, int Function(int) f) {
  List<int> result = [];
  for (var i in data) {
    result.add(f(i));
  }
  return result;
}

List<int> doubler(List<int> data) {
  List<int> result = [];
  for (var i in data) {
    result.add(i * 2);
  }
  return result;
}
