class Calculator {
  int add(int a, int b, [int? c]) {
    if (c != null) {
      return a + b + c;
    } else {
      return a + b;
    }
  }
}
