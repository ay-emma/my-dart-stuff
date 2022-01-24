class Animal {
  const Animal({required this.age});
  final int age;

  void sleep() => print('Sleep');
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moan() => print("Moaning barking");
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  void barking() => print("Dog barking");
  @override
  void sleep() {
    super.sleep();
    print("Sleep more Dog");
  }
}

class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);

  void catchBall() => print("Catch");
}

void main(List<String> args) {
  final animal = Animal(age: 10);
  animal.sleep();
  final dog = Dog(age: 10);
  dog.sleep();
}
