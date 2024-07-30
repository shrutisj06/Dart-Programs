import 'dart:io';

String reverse_odd_word(String sentence) {
  String answer = '';
  int start = 0;
  int count = 0;
  for (int current = 0; current <= sentence.length; current++) {
    if (current == sentence.length || sentence[current] == ' ') {
      String word = '';
      for (int i = start; i < current; i++) {
        word += sentence[i];
      }

      if (count % 2 != 0) {
        answer += reverseString(word);
      } else {
        answer += word;
      }

      if (current != sentence.length) {
        answer += ' ';
      }
      start = current + 1;
      count++;
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
  String sentence = 'kodeleaf software pvt. ltd';
  String output = reverse_odd_word(sentence);
  print(output);
}
