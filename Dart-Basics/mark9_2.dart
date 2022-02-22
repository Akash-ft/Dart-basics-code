import 'mark9_0.dart';
import 'mark9_1.dart';

class shope implements product, label {
  double _price;
  String _name;

  shope({required double price, required String name})
      : _price = price,
        _name = name;

  @override
  double get price => _price;

  @override
  set price(double price) => _price;

  @override
  String get name => _name;

  @override
  set name(String name) => _name;
}
