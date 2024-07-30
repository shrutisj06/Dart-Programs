import 'dart:io';

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  else {
    int result = 1;
    for (int i = 2; i <=n; i++) {
      result = result * i;
    }
    return result;
  }
}


void main()
{
  print('enter a number');
  int number=int.parse(stdin.readLineSync()!);

  int answer=(factorial(number));
  print('the factorial of number is $answer');


}