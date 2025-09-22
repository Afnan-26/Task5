class Animal {
  void speak() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Meow!");
  }
}
