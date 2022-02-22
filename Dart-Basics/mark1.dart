void main() {
  // using unicode
  var a = "hello \u2763  world";
  print(a);
  print("\n");
  // multi-line string
  var a1 = """ 
            hello
            world \$5      """;
  // trim function
  print(a1.trim());
  print("\n");
  // to overcome escape opertor
  print(r"c:\\windows in hp \dell\lenova");
  print("\n");
  // contains function
  print(a.contains("hello"));
  // replaceAll function
  var b = a.replaceAll("\u2763", "\u2323");
  print(b);
  print("\n");
  num c = 20504;
  print(c);
  //  runtimeType is find the type variable
  print(c.runtimeType);
  // toString convert any num variable to string.
  String c1 = c.toString();
  print(c1.runtimeType);
  String c2 = "20504";
  // int.parse is used to covert string into integer
  int c3 = int.parse(c2);
  // toDouble and double.parse is used to covert string into double value.
  print(c3.toDouble());
  print(c3.runtimeType);
  double c4 = double.parse(c2);
  print(c4.runtimeType);

  double d = 10.83465;
  print(d);
  String d1 = d.toString();
  print(d1.runtimeType);
  // tostringAsFixed is used to round of the vale after the decimal point.
  String d3 = d.toStringAsFixed(2);
  print(d3);
  print(d1.runtimeType);
  // To convert decimal to integer using ceil,floor and truncate.
  int d2 = d.ceil();
  print(d2);
  int d4 = d.floor();
  print(d4);
  int d5 = d.truncate();
  print(d5);

  print("\n");

  // division
  print(6 / 5);
  //integer division
  print(6 ~/ 5);
  print('\n');

  // ternary opertor
  int e = 0;
  String e1 = e > 2 ? "greater than 2" : "lesser than 2";
  print(e1);
  // nested ternary opertor
  String e2 = e > 5
      ? "greater than 5"
      : e > 2
          ? "greater than 2"
          : "lesser than 2";
  print(e2);

  var f = 10;
  var g = 7;

  f &= g;

  print("After using a compound assignment operator:");
  print(f);
}
