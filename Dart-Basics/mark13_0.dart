// copyWith
// his method takes all the properties(which need to change)
//and their corresponding values and returns new object with your desired properties.

// updateWith
// method is doing same thing by again calling copyWith method and at the end it is pushing returned object to stream.

// setting-up 2 enum to fetch particular set of data

enum Colors {
  red,
  blue,
  black,
  green,
  yellow,
  orange,
}

enum Brightness {
  light,
  dark,
}

class setting {
  // creating 4 variable in final modifier to make it runtime constant.
  final Colors accentColor;
  final Colors backgroundColor;
  final Colors buttonColor;
  final Brightness brightness;
//  using the this keyword we are passing the variable directly to the parameters
// If we used required key to tell the constructor should have the arguments passed in
// Or we can give them a default value to over come the NUll safty error.
  setting({
    this.accentColor = Colors.red,
    this.backgroundColor = Colors.yellow,
    this.brightness = Brightness.light,
    this.buttonColor = Colors.green,
  });
// set up the copywith method as a named constructor

  setting copyWith(
      {Colors? accentColor,
      Colors? backgroundColor,
      Colors? buttonColor,
      Brightness? brightness}) {
    return setting(
        // And Allow the user to pass a the argument ,if not it will take the default value where the this key word points.
        accentColor: accentColor ?? this.accentColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        brightness: brightness ?? this.brightness,
        buttonColor: buttonColor ?? this.buttonColor);
  }

  @override
  String toString() {
    // to check the value passed in the constructor
    // """ denoted multiple string representation
    return """\n
    AccentColor :$accentColor\n
    BackgroundColor :$backgroundColor\n
    Brightness:$brightness\n
    ButtonColor:$buttonColor\n
    """;
  }
}

void main() {
  var theme1 = setting();
  // we can create a copy of theme1 change the value using copywith method  and  storong it in theme2
  var theme2 = theme1.copyWith(
    accentColor: Colors.black,
    backgroundColor: Colors.green,
    brightness: Brightness.dark,
    buttonColor: Colors.blue,
  );
  print(theme2);
  print(theme1);
}
