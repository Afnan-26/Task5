abstract class Shape {
  double width;
  double height;
  Shape(this.width, this.height);

  double area();
}

class Circle extends Shape {
  Circle(double width, double height) : super(width, height);

  @override
  double area() {
    return width * height * 3.14;
  }
}

class Rectangle extends Shape {
  Rectangle(double width, double height) : super(width, height);

  @override
  double area() {
    return width * height;
  }
}
