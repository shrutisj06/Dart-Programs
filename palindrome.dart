import 'dart:io';
bool palindrome(String a)
{
  int left=0;
  int right=a.length-1;
  while(left<right)
  {
    if(a[left] !=a[right])
    {
      return false;
    }
    left++;
    right--;
  }
  return true;

}

void main()
{
  print('enter a word');
  String word= stdin.readLineSync()!;

  if(palindrome(word))
  {
    print('yes,it is a palindrome.');
  }
  else
  {
    print('No,it is not a palindrome.');
  }


}
