import 'dart:io';
void main()
{
  print('enter a number');
  int number=int.parse(stdin.readLineSync()!);

  for(int i=0;i<=number;i++)
  {
    print(i);
  }
}
