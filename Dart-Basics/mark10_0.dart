class Rectangle {
  double _length;
  double _height;
// creating a constructor with 2 arguments  and initialze it with the argument with the 2 _Private variable.
  Rectangle({required double length, required double height})
      : _length = length,
        _height = height;
// giving them a getter and setter to access the private variables.
  double get length => _length;
  set length(double length) => _length = length;

  double get height => _height;
  set height(double height) => _height = height;

  // when we call object of rectangle class it will return a string insted of intance of Rectangle.
//  we are overriding the string method
  @override
  String toString() {
    return "Rectangle\nlength $_length\nheight $_height";
  }

// we are overriding the operator to check the object value are equal or not
  @override
  //  to check only the Rectangle type variable we can use "covariant" keyword
  // since it take only rectangle type ,we can skip (if condition) at 29 and using fat arrow you can return the 2nd condition

  bool operator ==(covariant Rectangle ob) =>
      this._length == ob._length && this._height == ob._height;

  Rectangle operator *(int val) =>
      Rectangle(length: this._length * val, height: this._height * val);

  // bool operator ==(Object ob) {
  // creating a object class and check whether it is a instance of rectangle
  // if (ob is Rectangle) {
  // checking whether this value and value of the object class are same
  // if (this._length == ob._length && this._height == ob._height) {
  // return true;
  // }
  // }
  // return false;

}
