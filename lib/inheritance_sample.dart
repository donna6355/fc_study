class Vehicle {
  Vehicle(this.color) {
    print('Vehicle $color constructor is called');
  }

  final String color;
  final String definition = 'Vehicle';
}

class Car extends Vehicle {
  Car(String color)
      : super(
            color); //you need to inherit two var, one super the other override
  //Car(super.color)

  @override
  String get definition => 'Car ${super.definition}';
}

class Hatch extends Car {
  int price;
  Hatch(int price)
      : price = price, // sub class 단독 var가 있으면 먼저 해야됨!
        super('red'); //Hatch constructor가 호출되면 => parent constructor가 호출된다옹
}

class BMW extends Car {
  BMW(super.color); //BMW constructor의 argument가 바로 super.color로 할당됨!
  //BMW(String color):super(color) 똑같은 syntax
}

main() {
  final hatch = Hatch(2000);
  final bmw = BMW('green');
  print(hatch.color);
  print('Result: ${hatch is Vehicle}');
  print(bmw.color);
  print('Result: ${bmw is Vehicle}');
  // Output -> Result: true
}

// When class Car extends Vehicle, all properties, variables, functions implemented in class Vehicle will be available in class Car.
// You use extends when you want to create a more specific version of a class.(copy the Super class all + addition)

class Animal0 {}

// behaviors
abstract class Flyer0 {
  void fly() => print('I can fly!');
}

abstract class Swimmer0 {
  void swim() => print('I can swim!');
}

class Bird0 extends Animal0 implements Flyer0 {
  @override
  void fly() => print('I can fly!');
}

class Duck0 extends Animal0 implements Swimmer0, Flyer0 {
  @override
  void fly() => print('I can fly!');

  @override
  void swim() => print('I can swim!');
}

//Don't need to inheriting all the properties, but part of it. use implement

class Animal {}

// behaviors
mixin Flyer {
  void fly() => print('I can fly!');
}

mixin Swimmer {
  void swim() => print('I can swim!');
}

class Bird extends Animal with Flyer {}

class Duck extends Animal with Swimmer, Flyer {}

//Mixins are a way to abstract and reuse a family of operations and state
