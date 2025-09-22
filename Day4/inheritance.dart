class Vehicle {
  String brand;
  int year;
  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("Brand: $brand, Year: $year");
  }
}

class Car extends Vehicle {
  int doors;
  Car(String brand, int year, this.doors) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Doors: $doors");
  }
}

class Bike extends Vehicle {
  String type;
  Bike(String brand, int year, this.type) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Type: $type");
  }
}
