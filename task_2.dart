void main() {
  // task 1
  void execute(Function function) {
    function();
  }

  execute(() => print('Hello DART'));

  //task 2
  int square(int number) => number * number;
  String greet(String name) => 'Hello $name';
  bool isEven(int number) => number % 2 == 0;

  //task 3
  int addition(int num1, int num2) => num1 + num2;
  int subtraction(int num1, int num2) => num1 - num2;
  int multiplication(int num1, int num2) => num1 * num2;
  void fn(int num1, int num2, int Function(int, int) callbackFn) {
    final result = callbackFn(num1, num2);
    print('The result is $result');
  }

  fn(10, 20, addition);
  fn(10, 20, subtraction);
  fn(10, 20, multiplication);
}
