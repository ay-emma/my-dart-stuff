import 'dart:html';

abstract class Widget {}

class Text extends Widget {
  Text({required this.text});
  final String text;
}

class Button extends Widget {
  Button({required this.child, this.onPressed});

  final Widget child;
  final void Function()? onPressed;
}

abstract class Decoration {}

class Container extends Widget {
  final double? height;
  final double? width;
  final String? color;
  final Decoration? decoration;
  final Widget? child;

  Container({this.height, this.width, this.color, this.decoration, this.child});
}

/// * COMPOSITION HAS A RELATIONSHIP
/// * INHERITANCE IS A RELATIONSHIP