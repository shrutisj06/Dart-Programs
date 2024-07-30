import 'dart:io';

int countingVowels(word) {
  String vowels = 'AEIOUaeiou';
  int count = 0;


  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      count++;
    }
  }
  return count;
}


void main() {
  print('Enter a string:');
  String word = stdin.readLineSync() ?? '';
  int Count = countingVowels(word);
  print("Number of vowels= $Count");
}

