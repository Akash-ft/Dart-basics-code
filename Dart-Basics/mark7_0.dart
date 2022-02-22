class Account {
  // private variable
  double _balance;
// Named contructor and intialize the private variab
  Account({required double balance}) : _balance = balance;
// setting getter method to private variable
  double get balance => _balance;
  // add setter method to private variable to the argument passed
  set balance(double a) => _balance = a;
  // method for deposite
  double credit(double a) => _balance += a;
  // method for withdraw and check the balance
  dynamic withDraw(double a) {
    if (_balance > a) {
      _balance -= a;
    } else {
      print("Insufficient fund");
    }
  }
}
