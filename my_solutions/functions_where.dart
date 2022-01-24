void main(List<String> args) {
  const list = [1, 2, 3, 4];
  const names = ["ada", "ayo", 'dami'];

  final isEven = (int i) => (i % 2 == 0);

  list.where((value) => value % 2 == 0);
  list.where(isEven);
  list.firstWhere((i) => i == 5, orElse: () => -1);
  print('===========');
  print(myWhere<int>(list, (i) => i == 3));
  print(myWhere<String>(names, (k) => k == 'ayo'));
  print("<<<<first where>>>>>");
  final dling = firstWhere<int>(
    list,
    (i) => i == 5,
    orElse: () => -1,
  );
  print(dling);
}

List<T> myWhere<T>(List<T> input, bool Function(T) evaluate) {
  List<T> result = [];
  for (var i in input) {
    if (evaluate(i)) {
      result.add(i);
    }
  }
  return result;
}

T firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  T result = orElse();
  for (var item in items) {
    if (f(item)) {
      result = item;
      break;
    }
  }

  return result;
}
