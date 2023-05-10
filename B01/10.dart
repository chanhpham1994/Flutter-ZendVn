void main(List<String> args) {
  List<Map<String, String>> arr = [
    {'name': 'thu 2'},
    {'name': 'thu 3'},
    {'name': 'thu 4'},
    {'name': 'thu 5'},
  ];

  arr.removeWhere((ele) => (ele['name'] != 'thu 2' && ele['name'] != 'thu 3'));
  print(arr);
}
