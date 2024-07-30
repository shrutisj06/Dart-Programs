void main() {
  List<int> number = [87, 99, 4, 2, 67];

  for (int i = 0; i < number.length - 1; i++) {
    for (int j = 0; j < number.length - i - 1; j++) {
      if (number[j] > number[j + 1]) {
        swap(number, j, j + 1);
      }
    }
  }

  print('The sorted list is $number.length - 1');
}

void swap(List<int> list, int index1, int index2) {
  int temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}
