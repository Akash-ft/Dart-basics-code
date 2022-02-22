class Reading {
  double value;
  Reading({required double value}) : this.value = value;
// Named contructor which is derived from the
  Reading.Zero() : value = -999;

  @override
  String toString() => "$value";

// creating a factory contructor in the parent class.
// server is used to get every single map from the function.
// the factory constructor should have a return type resading.
  factory Reading.fromServer(server) {
// to get the value from the server map using the keys(type and reading).
    final type = server['type'];
    final reading = server['reading'];

    switch (type) {
      case 'temp':
        final city = server['city'];
        if (city is String && reading is double) {
          return Temperature(city: city, reading: reading);
        } else {
          return Temperature.Zero();
        }

      case 'pressure':
        final object = server['object'];
        if (object is String && reading is double) {
          return Temperature(city: object, reading: reading);
        } else {
          return Temperature.Zero();
        }

      default:
        return Temperature.Zero();
    }
  }
}

class Temperature extends Reading {
  String city;

  Temperature({required String city, required double reading})
      : this.city = city,
        // to acess the value of the value from the Reading class .
        super(value: reading);

  Temperature.Zero()
      : city = " ",
        super(value: -999);

  @override
  String toString() {
    return " Temperature reading:-\nReading:${(super.toString())} \nCity: $city";
  }
}

class Pressure extends Reading {
  String objectTested;

  Pressure({required String ObjectTested, required double reading})
      : this.objectTested = ObjectTested,
        // to acess the value of the value from the Reading class .
        super(value: reading);

  Pressure.Zero()
      : objectTested = "",
        super(value: -999);

  @override
  String toString() {
    return "Pressure reading:-\nReading:${(super.toString())}\nObject: $objectTested";
  }
}

void main() {
  var fromServer = [
    {
      'type': 'temp',
      'reading': 10.0,
      'city': 'chennai',
    },
    {
      'type': 'temp',
      'reading': 22.0,
      'city': 'chennai',
    },
    {
      'type': 'pressure',
      'reading': 20.0,
      'object': 'lead',
    },
  ];
// create a empty list and set it to Reading object
//so , it has acess to temperature and pressure object
  var reading = <Reading>[];
// take all the value from the fromServer list to iterate in the reading object list
  for (var item in fromServer) {
    // call the Reading class and passing factory constructor with item in the fromServer
    reading.add(Reading.fromServer(item));
    // to print all the map in the reading list
    // each map will be passed into the Reading class and check the type and create a type object based on the type value from server.
    for (var reading in reading) {
      print(reading);
    }
  }
}
