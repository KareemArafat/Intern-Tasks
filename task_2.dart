void main() {
  List<int> numList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var a = numList.map((e) => e + 1);
  print(a.toList());

  var b = numList.firstWhere((e) => e > 5);
  print(b);

  var c = numList.lastWhere((e) => e < 5);
  print(c);

  var d = numList.where((e) => e % 2 == 0);
  print(d.toList());

  var e = numList.reduce((a, b) => a + b);
  print(e);

  var f = numList.fold(0, (a, b) => a + b);
  print(f);
}
