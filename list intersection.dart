findIntersection(list1, list2) {
  var intersection =[];
  for (var element in list1) {
    if (list2.contains(element) && !intersection.contains(element)) {
      intersection.add(element);
    }
  }
  return intersection;
}

void main() {
  var list1 = [1, 2, 3, 4, 5,6,7,8];
  var list2 = [3, 4, 5,8,9];
  var intersection = findIntersection(list1, list2);
  print(intersection);
}

