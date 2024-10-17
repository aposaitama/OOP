import 'dart:math';

abstract class Shape {
  double area();
}

class Rectangle {
  Rectangle({required this.width, required this.height});
  double width;
  double height;

  @override
  double area() {
    return width * height;
  }
}

class Triangle {
  Triangle({required this.base, required this.height});
  double base;
  double height;

  @override
  double area() {
    return 0.5 * base * height;
  }
}

class Circle {
  Circle({required this.radius});

  double radius;
  @override
  double area() {
    return pi * (radius * radius);
  }
}

void main() {
  final rectangle = Rectangle(width: 10, height: 5);
  final triangle = Triangle(base: 10, height: 5);
  final circle = Circle(radius: 10);
  print(rectangle.area());
  print(triangle.area());
  print(circle.area());
}
