import 'dart:io';

void main() {
  // input validation
  // print("enter the number between 1 through  10");
  // int number = int.parse(stdin.readLineSync()!);

  // while (number < 1 || number > 10) {
  //   print("invalid number");
  //   print("enter the number between 1 through  10");
  //   int number = int.parse(stdin.readLineSync()!);
  // }
  // print("$number is valid");

// user control
  // print("enter number of times to square ");
  // int number = int.parse(stdin.readLineSync()!);

  // print("Value          Value Squared");
  // print("****************************");

  // for (int i = 1; i <= number; i++) {
  //   print("$i                 ${i * i}");
  // }

  // sentinal values
  int number;
  int? Doublenumber;
  print("please enter a value to double or 0 to stop");
  number = int.parse(stdin.readLineSync()!);

  while (number != 0) {
    Doublenumber = number * 2;
    print("$number is doubled $Doublenumber");
    break;
  }
}
