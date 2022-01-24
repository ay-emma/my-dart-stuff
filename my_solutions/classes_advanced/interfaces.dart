/// Diffrernce between implements and extends
/// extends only accomondata one super class
/// while implement accomodate multiple super class
///

abstract class InterfaceA {
  void a() {}
}

abstract class InterfaceB {
  void b() {}
}

class AB implements InterfaceA, InterfaceB {
  @override
  void a() {
    // TODO: implement a
  }

  @override
  void b() {
    // TODO: implement b
  }
}

abstract class Base {
  void foo();
  void bar() => print("Bar");
}

// extends will only prompt you to override methods without implementation
class Subclass extends Base {
  @override
  void foo() {
    // TODO: implement foo
  }
}

/// While implement will prompt you to override all methods of the base class
/// even if they are implemented
class SubClass2 implements Base, Subclass {
  @override
  void bar() {
    // TODO: implement bar
  }

  @override
  void foo() {
    // TODO: implement foo
  }
}
