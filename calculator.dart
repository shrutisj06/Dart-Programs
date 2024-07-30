import 'dart:io';

void main() {


  print('Enter first number: ');
int first = int.parse(stdin.readLineSync()!);

  print('Enter second number: ');
  int second = int.parse(stdin.readLineSync()!);

  print('Enter operation (+, -, *, /): ');
  String operation = stdin.readLineSync()!;

  var result = 0;
  switch (operation) {
    case '+':
      result = first+ second;
      break;
    case '-':
      result = first - second;
      break;
    case '*':
      result = first * second;
      break;
    case '/':
      if (second != 0) {
        result = first ~/ second;
      }
      break;
    default:
      print('Invalid');
      return;
  }

  print('answer= $result');
}
