import 'mark7_2.dart';

void main() {
  var akash = instaAccount(balance: 1000);
// set the balance of parent class  private variable
  print(akash.balance);
  // call parent class method
  print(akash.withDraw(500));
}
