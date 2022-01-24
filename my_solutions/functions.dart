// typedef Greet = String Function(String name);
typedef String Greet(String name);

void main() {
  // const order = ['margherita', 'pepperoni', 'pineapple'];
  calculateOrder(['margherita', 'pepperoni', 'pineapple']);

  final sayHi = (String name) => 'Hi my name is $name';

  welcome(sayHi, "Emmanule");
}

void welcome(Greet greet, String name) {
  print(greet(name));
  print('Welcome');
}

const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

double calculateOrder(List<String> order) {
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }
  print('Total: \$$total');
  return total;
}
