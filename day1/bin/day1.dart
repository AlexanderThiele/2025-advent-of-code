import 'dart:io';

void main(List<String> arguments) {
  int code = 50;
  int howoftenzero = 0;
  List<String> directions = File('input.txt').readAsLinesSync();

  for (String direction in directions) {
    String letter = direction[0];
    int number = int.parse(direction.substring(1));

    if (letter == 'L') {
      code -= number;
      while (code < 0) {
        code += 100;
      }
    } else if (letter == 'R') {
      code += number;
      while (code >= 100) {
        code -= 100;
      }
    }

    if (code == 0) {
      howoftenzero++;
    }
  }

  print(code);
  print(howoftenzero);
}
