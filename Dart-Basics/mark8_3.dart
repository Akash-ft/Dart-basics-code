import 'mark8_2.dart';

// creating a new class which inherits from square class.
class cube extends sqaure {
  double _height;
  // get the argument from the parent class and initialzing the private variable with
  cube({required double side})
      : _height = side,
        super(side: side);
// getter and setter for the height
  double get height => _height;
  set height(double height) => _height = height;
// call the parent class method to child class method.
  double getVol() => getArea() * height;
}
