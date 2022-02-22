void main() {
  // Anonymous Function
  // 1
  // var sum = (num1, num2) => num1 + num2;
  // 2
  // int Function(int ,int) sum =(num1,num2)=> num1 +num2;
  // 3
  // var sum = (num1, num2) {
  //   return num1 + num2;
  // };
  // print(sum(1, 2));
  //

  var val = [1, 2, 3, 4, 5, 6];
  var newval = <int>[];
  //  anonymous function
  var multiple = (value) => newval.add(value * 5);
  listop(val, multiple);
  print(newval);
}

// Generic type
void listop<T>(List<T> list, void Function(T) action) {
  for (var item in list) {
    action(item);
  }
}
