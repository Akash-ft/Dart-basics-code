import 'dart:io';

void main() {
  print('Enter the name of the file:');
  var file = stdin.readLineSync()!;

  final lines = File(file).readAsLinesSync();

  lines.removeAt(0);
  var sum = 0.0;

  for (var line in lines) {
    final value = line.split(',');
    print("${value[0]} ${value[1]} is scored ${value[2]}");
    sum += double.parse(value[2]);
  }

  print('Average of total score ${(sum / lines.length).toStringAsFixed(2)}');
}
