class Person {
  Person({required this.name, required this.age, required this.height});
  final String name;
  final int age;
  final double height;

  void printDescription() {
    print("My name is $name. I'm $age years old, I'm $height meters tall ");
  }
}

class Complex {
  Complex(this.im, this.re);

  //Name argument constructor
  Complex.zero()
      : re = 0,
        im = 0;
  Complex.identity()
      : re = 1,
        im = 0;
  Complex.real(this.re) : im = 0;
  Complex.imaginary(this.im) : re = 0;

  final double re;
  final double im;
}

void main(List<String> args) {
  final person = Person(name: "Ade", age: 12, height: 11.6);
  final person2 = Person(name: "Ayo", age: 21, height: 11);

  person.printDescription();
  person2.printDescription();

  final zero = Complex.zero();
  final identity = Complex.identity();
  final real = Complex.real(3);
  final imaginary = Complex.imaginary(4);
}
