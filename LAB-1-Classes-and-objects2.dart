class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  double width = 5;
  double height = 10;

  Rectangle rectangle = Rectangle(width, height);

  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();

  print("Width: $width");
  print("Height: $height");
  print("Area: $area");
  print("Perimeter: $perimeter");
}