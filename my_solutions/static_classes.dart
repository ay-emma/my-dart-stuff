/// Static variables are varible that does not belong to an instance of class,
/// but belongs to the class it self
class Strings {
  // static String welcome = "Welcome"; //Dart can infare the type.
  static const welcome =
      "Welcome"; //global constants that belongs to that class
  // static String signIn = "SignIn";
  static const signIn = "SignIn";
  static String greet(String name) => "Welcome $name";
}

void main(List<String> args) {
  print(Strings.welcome);
  print(Strings.signIn);
  print(Strings.greet("Ayo"));
}
