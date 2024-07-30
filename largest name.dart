void main()
{
  List<String> names=['shruti','jainnnnnnnnn','dimple','vanshika'];
  String answer='';
  for(int i=0;i<names.length;i++)
    {
      if(names[i].length >answer.length)
        {
          answer=names[i];
        }
    }
  print('the longest name in the list is $answer');
}

