import 'mark7_0.dart';

// instaAccount is a child class of parent class of account.
// it has a (is a relationship) between the parent and child.
class instaAccount extends Account {
  // it will get the value from parent class and initialize balance using super keyword.
  // Super keyword is used to pass the value from the argument child class to parent classs.
  instaAccount({required double balance}) : super(balance: balance);
}
