void main(List<String> args) {
  print('Fizz Buzz Program');

  for (var i = 0; i < 16; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('Fizz Buzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print(r'Buzz U+1F602	');
    } else {
      print(i);
    }
  }
}
