class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;

  Credentials copyWith({String? email, String? password}) {
    return Credentials(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() {
    return "Credentials( $email, $password  )";
  }
}

void main(List<String> args) {
  const credentials = Credentials();
  final updated1 =
      credentials.copyWith(email: "adedokunemmmanuel250@gmail.com ");

  print(updated1);
  final updated2 = updated1.copyWith(password: 'to-easy-man!!');

  print(updated2);
}
