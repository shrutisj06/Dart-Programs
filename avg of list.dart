void main()
{
  List<int> number=[1,2,3,4,5,6,7];
  int sum=0;
  for (int i=0;i<number.length;i++)
  {
    sum += number[i];
  }
  var average= (sum)/(number.length);
  print('the average is  $average');

}

