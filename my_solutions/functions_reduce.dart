void main(List<String> args) {
  const list = [1, 2, 3, 4];

  final answer = list.reduce((value, element) => value + element);
  print(answer);

  // value:  1 3 6 10
  //element: 2 3 4

  const email = [
    'abc@abs.com',
    'me@example.co.uk',
    'john@gmail.com',
    'katy@yahoo.com',
  ];
  const knownDomains = ['gmail.com', 'yahoo.com'];

  final unknownDomains = email
      .map((e) => e.split('@').last)
      .where((ele) => !knownDomains.contains(ele));
  print(unknownDomains);
}
