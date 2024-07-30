import 'dart:io';

int reverse(int number) {
  int reversed = 0;
  while (number != 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }
  return reversed;
}

void main() {
  print('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  int reversedNumber = reverse(number);
  print('Reversed number: $reversedNumber');
}
