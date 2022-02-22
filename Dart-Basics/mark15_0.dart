// It will all Input and output functions and class.
import 'dart:io';

void main() {
  salesOnStore();
}

void salesOnStore() async {
  addInCart();
  // Since we are using async in shopping which is called in salesOnStore .
  //should also be async to overcome the errors in the shopping() method.
  // instead using await keyword

  // *double bill =await shopping();*

  // (then)method     keyword will refer the future await and we can pass in the final function.
  shopping().then((value) => payBills(value));

  chatting();
}

void addInCart() {
  print("Fill up your cart");
}

//  when you using future class in your function the return type should also be Future.
Future<double> shopping() async {
  Duration waitTime = Duration(seconds: 8);
  //  Since it is running sequencial it will return the value of bill the future is 4 sec delayed
  double bill = 0;
  // Future class will runs the code background and will not effect the program flow.
  // delayed extension comes along with duration and function call .
  // we can use await keyword with async method.
  //   it will wait the future function to excecute

  await Future.delayed(waitTime, () {
    bill = 500.0;
    print("Buy all the products we need");
  });
  return bill;
}

void chatting() {
  print("chatting with people");
}

void payBills(double bill) {
  //  Duration is pre-defined class from the dart:io.
  //  Duration constructor hold the time of laps.
  //  it is sync method(Alt your whole programe)
  Duration waitTime = Duration(seconds: 4);
  // Sleep function will holds program flow for 4 sec.Once the Shopping laps for 4 sec and its complete the flow.
  sleep(waitTime);
  print("Paid $bill and back to home");
}
