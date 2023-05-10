void main(List<String> args) {
  var arr1 = [
    {'name': 'Nguyen van A'},
    {'name': 'Nguyen van B'},
    {'name': 'Nguyen van C'}
  ];

  var arr2 = [
    {'name': 'Nguyen van C'},
    {'name': 'Nguyen van D'},
    {'name': 'Nguyen van E'}
  ];

  List array = [];
  arr1.forEach((e1) {
    array = arr2.where((e2) => e2['name'] == e1['name']).toList();
  });

  array.forEach((item) {
    print("Phan tu co name giong nhau: ${item['name']}");
  });
}
