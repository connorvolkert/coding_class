List<int> pointsToLengths(List<int> numbers) {
  List<int> listDeductions = [];
  for (int i = 0; i < numbers.length - 1; i++) {
    int difference = numbers[1 + i] - numbers[i];
    listDeductions = listDeductions + [difference];
  }
  return listDeductions;
}

List<int> lengthsToPoints(List<int> numbers, int startPoint) {
  List<int> listAdds = [startPoint];
  for (int i = 0; i < numbers.length; i++) {
    int sum = listAdds[i] + numbers[i];
    listAdds = listAdds + [sum];
  }
  return listAdds;
}

void main() {
  List<int> lengths = pointsToLengths([13, 53, 84, 6874]);
  print(lengths);
  List<int> points = lengthsToPoints(lengths, 13);
  print(points);
}