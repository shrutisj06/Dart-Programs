import 'dart:io';
void table(int n)
{  int result=0;
for (int i=0;i<=10;i++)
{
  result=n*i;
  print('$n * $i =$result');
}
}

void main()
{
  print('enter a number');
  int number=int.parse(stdin.readLineSync()!);

  table(number);
}
