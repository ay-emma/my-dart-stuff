enum Operation { plus, minus, multiply, divide }

void main() {
  const a = 4;
  const b = 2;
  const op = Operation.plus;
  // TODO: implement calculator

  switch (op) {
    case Operation.plus:
      print(a + b);
      break;
    case Operation.minus:
      print(a - b);
      break;
    case Operation.multiply:
      print(a * b);
      break;
    case Operation.divide:
      print(a / b);
      break;
  }
}
