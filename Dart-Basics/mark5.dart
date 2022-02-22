void main() {
  final list = [20, 30, 40];
  // using for loop
  for (var item in list) {
    print(item);
  }

  print("\n");

  // foreach operation
  list.forEach((item) {
    print(item);
  });

  print("\n");

  //shorthand operator foreach function
  list.forEach(print);

  print("\n");

  // map Function.
  var half = list.map((value) => value / 2);
  // now it is iterable
  print(half);

  print("\n");

  var halflist = list.map((value) => value / 2).toList();
  // now it is list
  print(halflist);
}
