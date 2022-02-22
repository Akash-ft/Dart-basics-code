import 'mark6_0.dart';
import 'mark6_3.dart';

void main() {
  var house2 = House(
    noOfWindows: 3,
    noOfDoors: 4,
    typeOfWall: "brick",
    typeOfRoof: "sheet",
  );

  house2.noOfDoor = 5;
  house2.typeOfRoof = "concret";
  house2.printData();

  // calling a static variable
  print(strings.roofType);
  print(strings.doubleAValues(89));
}
