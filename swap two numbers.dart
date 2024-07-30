import 'dart:io';
void swapping(int a, int b) {
  print('Before swpping: a = $a, b = $b');

  int temp = a;
  a = b;
  b = temp;

  print('After swapping: a = $a, b = $b');
}

void main() {
  print('Enter the first number: ');
  int num1 =int.parse( stdin.readLineSync()!);

  print('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);


  swapping(num1, num2);
}
