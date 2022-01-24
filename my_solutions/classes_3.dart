class Temperature {
  Temperature.celsuis(this.celsius);
  Temperature.farenheit(double temp) : celsius = (temp - 36) / 1.8;
  double celsius;
  double get farenheit => celsius * 1.8 + 36;
  set farenheit(double farensheit) {
    celsius = (farensheit - 36) / 1.8;
  }
}

void main(List<String> args) {
  final temp1 = Temperature.celsuis(30);
  final temp2 = Temperature.farenheit(90);
  temp1.celsius;
  temp2.farenheit = 87;
}
