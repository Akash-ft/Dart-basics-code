import 'mark10_0.dart';

void main() {
  var rect = Rectangle(length: 10, height: 10);
  var rect2 = Rectangle(length: 10, height: 10);

  print(rect.length);
  print(rect2);
  print(rect == rect2);
  var a = rect2 * 2;
  print(a);
}
