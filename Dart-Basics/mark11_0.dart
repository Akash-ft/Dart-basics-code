class Trainee {
  String _name;

  Trainee({required String name}) : _name = name;

  String get name => _name;
  set name(String name) => _name = name;

  @override
  String toString() {
    return "Trainee name\n$_name\n";
  }
}

class Position {
  String _roll;
  int _level;

  Position({required String roll, required int level})
      : _roll = roll,
        _level = level;

  String get roll => _roll;
  set roll(String roll) => _roll = roll;

  int get level => _level;
  set level(int level) => _level = level;

  @override
  String toString() {
    return "Roll \n$_roll\nLevel\n$_level";
  }
}

// Procces of composition (has a relationship)
class Department {
  String _stream;
  // we are use a class type to work into the data
  Trainee _trainee;
  Position _position;

  Department({
    required String stream,
    required Trainee trainee,
    required Position position,
  })  : _stream = stream,
        _trainee = trainee,
        _position = position;

  String get stream => _stream;
  set stream(String stream) => _stream = stream;

  Trainee get trainee => _trainee;
  set trainee(Trainee level) => _trainee = trainee;

  Position get position => _position;
  set position(Position position) => _position = position;

  @override
  String toString() {
    return "Training\n$_stream\nName\n$_trainee\nPosition\n$_position";
  }
}

void main() {
  var department = Department(
    stream: "Software developer",
    trainee: Trainee(
      name: "akash",
    ),
    position: Position(
      roll: "Flutter developer",
      level: 99,
    ),
  );

  print(department);
}
