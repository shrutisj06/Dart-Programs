// import 'dart:io';
//
// String reverse(a)
// {
//   String reverse= '';
//   for(int i=a.length-1;i>=0;i--)
//     {
//
//       reverse += a[i];
//     }
// return reverse;
// }
// void main()
// {
//   String a='kodeleaf software pvt. ltd.';
//
//   var answer=reverse(a);
//   print('the reverse string is $answer');
//
//
//}

//kodeleaf erawtfos pvt. .dtl
import 'dart:io';

String reverse_odd_word(String word) {
  List words = word.split(' ');
  String answer = '';
  for (int i = 0; i < words.length; i++) {
    if (i % 2 != 0) {
      answer += reverseString(words[i]);
    } else {
      answer += words[i];
    }
    if (i != words.length) {
      answer += ' ';
    }
  }
  return answer;
}

String reverseString(String word) {
  String reversed = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  return reversed;
}

void main() {
  String word = 'kodeleaf software pvt. ltd';
  String output = reverse_odd_word(word);
  print(output);
}
