void main() {
  var house1 = House(
      noOfWindows: 4, noOfDoors: 3, typeOfWall: "Brick", typeOfRoof: "sheet");
  house1.printData();
}

class House {
  int _noOfWindows = 0;
  // private variable(To declare a private variable we use _  )
  int _noOfDoors = 0;
  String _typeOfWall = "";
  // private variable
  String _typeOfRoof = "";
// passing a positional aruguments
  // House(
  //   int noOfWindows,
  //   int noOfDoors,
  //   String typeOfwall,
  //   String typeOfRoof,
  // ) {
  //   // "this" keyword is used to refer the varible to arguments passed inside the contructor
  //   this.noOfWindows = noOfWindows;
  //   this.noOfDoors = noOfDoors;
  //   this.typeOfwall = typeOfwall;
  //   this.typeOfRoof = typeOfRoof;
  // }

  // void printData() {
  //   print('the number of windows :${this.noOfWindows}');
  //   print('the number of windows :${this.noOfDoors}');
  //   print('the number of windows :${this.typeOfwall}');
  //   print('the number of windows :${this.typeOfRoof}');
  // }

  // passing a named arguements and required keyword is used to null-Safty
  // House({
  //   required int noOfWindows,
  //   required int noOfDoors,
  //   required String typeOfwall,
  //   required String typeOfRoof,
  // }) {
  //   // "this" keyword is used to refer the varible to arguments passed inside the contructor
  //   this.noOfWindows = noOfWindows;
  //   this.noOfDoors = noOfDoors;
  //   this.typeOfwall = typeOfwall;
  //   this.typeOfRoof = typeOfRoof;
  // }

  // Initializer or shorthand way to initailize the named arguments

  House({
    required int noOfWindows,
    required int noOfDoors,
    required String typeOfWall,
    required String typeOfRoof,
  })  :
        // "this" keyword is used to refer the varible to arguments passed inside the contructor
        this._noOfWindows = noOfWindows,
        this._noOfDoors = noOfDoors,
        this._typeOfWall = typeOfWall,
        this._typeOfRoof = typeOfRoof;
// Giving a getter to private variable
  int get noOfWindows => _noOfWindows;
  int get noOfDoor => _noOfDoors;
  String get typeOfWall => _typeOfWall;
  String get typeOfRoof => _typeOfRoof;

  // Giving a setter to private variable

  set noOfWindows(int no) => _noOfWindows = no;
  set noOfDoor(int no) => _noOfDoors = no;
  set typeOfWall(String type) => _typeOfWall = type;
  set typeOfRoof(String type) => _typeOfRoof = type;

  void printData() {
    print('the number of windows :${this._noOfWindows}');
    print('the number of windows :${this._noOfDoors}');
    print('the number of windows :${this._typeOfWall}');
    print('the number of windows :${this._typeOfRoof}');
  }
}
