import 'dart:io';

bool check_Prime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print('Enter a number ');
  int number = int.parse(stdin.readLineSync()!);

  if (check_Prime(number))
  {
    print('$number is a prime number.');
  }
  else
  {
    print('$number is not a prime number.');
  }
}
