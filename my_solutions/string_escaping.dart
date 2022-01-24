main() {
  print('I am feeling good');
  print('I\'ll feeling good tomorrow\\');
  print('it \$100');
  // e.g window file path C:Windows\user\file
  print('C:Windows\\users\\file');
  print(r'C:Windows\users\file');
  String foodword = 'I love pizza';
  print(foodword);
  foodword = foodword.replaceAll('pizza', 'potatoes');
  print(foodword);
  // post and pri   --fix

  ///post-fix
  /// x value is assigned to y before the increment is done
  print('post-fix');
  int x = 1;
  int y = x++;
  print('x = $x, y=$y');

  ///pri-fix
  /// x value is assigned to y before the increment is done
  print("pri-fix");
  int a = 1;
  int b = ++a;
  print('a = $a, b=$b');

  print('forlloop');
  for (int i = 0; i < 10; ++i) {
    print(i);
  }
  //  1, y = 1, z = 0
}
