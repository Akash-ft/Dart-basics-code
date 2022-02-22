import 'mark8_0.dart';

// we are inheriting abstract class to square
class sqaure extends rectangle {
  // passing 2 argument from the parent class to child class argument.
  sqaure({required double side}) : super(height: side, length: side);
// overriding the parent class method  in child class .
  @override
  double getArea() => length * height;
}
