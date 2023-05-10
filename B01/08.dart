void main(List<String> args) {
  List<int> arr = [5, 2, 2, 7, 3, 9, 8, 2, 12, 82, 10];
  int index = arr.lastIndexOf(2);
  arr[index] = 5;
  print("Mảng mới: ${arr}");
}
