void main()
{
  List <int> first=[1,2,34,4,5,67,8];
  List <int> second=[2,3,5,67,80];
  List <int> answer=[];

  for(int i=0;i<first.length;i++) {
    for(int j=0;j<second.length;j++)
      {
        if (first[i]==second[j])
          {
            answer.add(first[i]);
          }

      }
  }
  print('the common elements are $answer');
}