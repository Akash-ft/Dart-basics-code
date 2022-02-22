//  Creating a external extension operation.
extension usefulOperation on List<int> {
  double Average() {
    var sum = 0;
    // this keyword is used to point the list in the main method.
    for (var item in this) {
      sum += item;
    }
    return (sum / this.length);
  }
}
