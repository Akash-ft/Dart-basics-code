//using enum in switch statement.
enum os {
  iOS,
  Windows,
  linux,
  android,
  Boss,
}

void main() {
  var OS = os.Boss;

  switch (OS) {
    case os.iOS:
      print("Welcome to Apple");
      break;
    case os.Windows:
      print("Welcome to Microsoft");
      break;
    case os.linux:
      print("Welcome to linux");
      break;
    case os.android:
      print("Hello Android");
      break;
    case os.Boss:
      print("welcome to boss ");
      break;
  }
}
