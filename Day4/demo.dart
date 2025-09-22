import 'inheritance.dart';
import 'override.dart';
import 'abstraction.dart';
import 'static.dart';
import 'overloading.dart';
import 'mixin.dart';

void main() {
  // task 1
  Car car1 = Car("Toyota", 2022, 4);
  car1.displayInfo();

  Bike bike1 = Bike("Yamaha", 2021, "Sport");
  bike1.displayInfo();

  // task 2
  List<Animal> animals = [Dog(), Cat()];
  for (var animal in animals) {
    animal.speak();
  }
  
  // task 3
  Circle c = Circle(10, 10);
  print("Circle Area: ${c.area()}");

  Rectangle r = Rectangle(20, 10);
  print("Rectangle Area: ${r.area()}");

  // task 4
  Counter c1 = Counter();
  Counter c2 = Counter();
  Counter c3 = Counter();

  Counter.getCount();

  // task 5
  Calculator calc = Calculator();
  print(calc.add(10, 20));
  print(calc.add(50, 10, 15));

  // task 6
  Report R = Report();
  R.log("This is a log message");
  R.printData("Some report data");
  R.generateReport();
}
