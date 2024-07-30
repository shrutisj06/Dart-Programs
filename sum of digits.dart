import 'dart:io';
void main()
{
  print('enter a number');
  int num1 =int.parse( stdin.readLineSync()!);
  int sum=0;
  while (num1 > 0) {
    sum += num1 % 10;
    num1 ~/= 10;
  }
print('sum of digits is $sum');
}
