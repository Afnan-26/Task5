import 'dart:io';

// task 3
int rectangleAreaNormal(int length, int width) {
  return length * width;
}

int rectangleAreaArrow(int length, int width) => length * width;

// task 4
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// task 5
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Data fetched successfully!";
}

void main() async {
  // task 1
  Iterable<int> numbers = [for (int i = 1; i <= 20; i++) i];
  Iterator<int> iterator = numbers.iterator;
  while (iterator.moveNext()) {
    if (iterator.current % 2 == 0) {
      print(iterator.current);
    }
  }
  //   task 2
  Map<String, int> students = {
    'afnan': 85,
    'osama': 92,
    'Omar': 78,
    'noor': 95,
    'shefaa': 88,
  };

  print("All student names:");
  students.keys.forEach((name) {
    print(name);
  });

  int highestGrade = students.values.reduce((a, b) => a > b ? a : b);
  print("\nHighest Grade: $highestGrade");

  students.remove('Omar');
  print("\nAfter removing Omar:");
  students.forEach((name, grade) {
    print("$name: $grade");
  });

  //   task 3
  print("Normal Function Area: ${rectangleAreaNormal(5, 3)}");
  print("Arrow Function Area: ${rectangleAreaArrow(5, 3)}");

  var rectangleAreaAnonymous = (int length, int width) {
    return length * width;
  };
  print("Anonymous Function Area: ${rectangleAreaAnonymous(5, 3)}");

  int applyArea(int length, int width, Function operation) {
    return operation(length, width);
  }

  print("Higher-Order Function Area: ${applyArea(5, 3, (l, w) => l * w)}");

  //task 4
  await for (int number in numberStream()) {
    print(number);
  }
  //task 5
  print("Fetching data...");
  String data = await fetchData();
  print(data);

  //task 6
  String? username;
  print("Enter your username:");
  username = stdin.readLineSync();
  username ??= "Guest";
  print(username == "Guest" ? "Guest" : "Welcome, $username");
}
