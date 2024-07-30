import 'dart:io';
void main()
{
  print('enter your age');
  int age=int.parse(stdin.readLineSync()!);

  if(age>=18)
  {
    print('yes.you can vote');
  }
  else
  {
    print('no.you cannot vote');
  }
}

