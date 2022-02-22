//  Extensions
// are a way to add functionality to existing libraries.
// other way of excecuting extension is to create a class and call the class in your main programe like below
//      "print (class-id . Staticfunction-id(argument need to passed)) "
import 'mark14_1.dart';
// it is decleared using the extension keyword
// we have to specify which class is to be modified(setting using the "on" keyword)
//  it will help to add new function to the existing function for the class.

extension sumOperatiom on List<int> {
  int Sum() {
    var sum = 0;
    // this keyword is used to point the list in the main method
    for (var item in this) {
      sum += item;
    }
    return (sum);
  }
}

void main() {
  List<int> list = [2, 3, 4, 5, 6];
  //  the average extension function is in mark14_1.
  // to use the extension function we have to import the file where we bulid the extension.
  // the type of the List will remain same but we are adding functionality to the type class.
  print(list.Sum());
  print(list.Average());
}
