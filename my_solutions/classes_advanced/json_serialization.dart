class Person {
  Person({required this.name, required this.age});
  final String name;
  final int age;

  factory Person.fromJson(Map<String, Object> json) {
    final jsonName = json['name'];
    final jsonAge = json['age'];

    if (jsonName is String && jsonAge is int) {
      return Person(name: jsonName, age: jsonAge);
    } else {
      throw UnsupportedError(
          "This is an unsupported value $jsonName  and $jsonAge");
    }
  }

  Map<String, Object> toJson() => {'name': this.name, 'age': this.age};
}

void main() {
  final person = Person.fromJson({
    'name': 'Andrea',
    'age': 36,
  });
  final json = person.toJson();
  print(json);
}
