import 'dart:io';

bool isPangram(String str) {
  List<String> alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('');
  List<String> foundLetters = [];


  str = str.toLowerCase();
  for (int i = 0; i < str.length; i++) {
    String letter = str[i];

    if (alphabet.contains(letter) && !foundLetters.contains(letter)) {
      foundLetters.add(letter);
    }
  }
  return foundLetters.length == 26;
}

void main() {
  print('Enter a string:');
  String input = stdin.readLineSync() ?? '';

  if (isPangram(input))
  {
    print("The string is a pangram.");
  }
  else
  {
    print("The string is not a pangram.");
  }
}


