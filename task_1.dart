void main() {
  final Student student = Student(gander: 'Male', age: 23, Gpa: 3.5);
  final Student student2 = Student(gander: 'Male', age: 23, Gpa: 3);

  student.showStudentInfo(studentName: 'Kareem');
  print('********************');
  student2.showStudentInfo(studentName: 'Mohamed');
}

class Student {
  late String name;
  final String gander;
  final int age;
  final String? className;
  static const String track = 'Flutter';
  var Gpa;

  Student({
    required this.gander,
    required this.age,
    this.className,
    required this.Gpa,
  });

  void showStudentInfo({required String studentName}) {
    name = studentName;
    print('The Student Name Is : $name');
    print('The Age is : $age');
    print('The Gander is : $gander');
    print('The Class Name is : ${className ?? 'Graduated'}');
    print('The Track is : $track');
    print('The GPa is : $Gpa');
  }
}
