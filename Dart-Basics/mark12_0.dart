// Factory contructor
class Shape {
  final String type;
  final int id;
  static final Map<String, Shape> _cache = <String, Shape>{};

  // factory constructor
  factory Shape(String type, {int? id}) {
    //putIfAbsent method-adds an element with the specified Value.
    //ifAbsent menthod- adds an element with the value computed using the Key.
    return _cache.putIfAbsent(
        type,
        () => Shape._init(
              type,
              id!,
            ));
  }

  // initialize new shape
  Shape._init(this.type, this.id);

  // prints information about current shape
  void printInfo() {
    print('shape type is: ${type}, shape id is: ${id}');
  }
}

void main(List<String> args) {
  // initializing a circle
  new Shape('circle', id: 2)..printInfo();
  // no shape id is specified
  new Shape('circle')..printInfo();
}
