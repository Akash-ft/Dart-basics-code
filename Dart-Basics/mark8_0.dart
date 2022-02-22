// abstract class doesn't have object
abstract class rectangle {
  double _length;
  double _height;
// creating a constructor with 2 arguments  and initialze it with the argument with the 2 _Private variable.
  rectangle({required double length, required double height})
      : _length = length,
        _height = height;
// giving them a getter and setter to access the private variables.
  double get length => _length;
  set length(double length) => _length = length;

  double get height => _height;
  set height(double height) => _height = height;
// declaring a abstract class without body.
  double getArea();
}
