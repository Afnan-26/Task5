import 'dart:io';
void main() {
    // Task 1
  stdout.write("Enter num1: ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num2: ");
  int num2 = int.parse(stdin.readLineSync()!);

  print(num1 + num2);
  print(num1 * num2);
  print(num1 - num2);

  print(num1 > num2);
  print(num1 < num2);
  print(num1 == num2);

//  1.2
  if (num1 > 0 && num2 > 0) {
    print('Both are positive');
  }

  if (num1 > 0 || num2 > 0) {
    print('At least one is positive');
  }

// 1.3
  String? name = null;
  print(name ?? 'Unknown');
  print(name?.length);

// Task 2
  stdout.write("Enter grade 0:100 \n ");
  int grade = int.parse(stdin.readLineSync()!);

  if (grade >= 90 && grade <= 100) {
    print('A');
  } else if (grade >= 80 && grade < 90) {
    print('B');
  } else if (grade >= 70 && grade < 80) {
    print('C');
  } else {
    print('F');
  }

// 2.2
  print("Even numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

// 2.3
  stdout.write("Enter day number (1-7): ");
  int day = int.parse(stdin.readLineSync()!);

  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }

// Task 3
  List<int> list = [10, 20, 30, 40];

  for (int i in list) {
    print(i);
  }

  list.forEach((element) {
    print(element * 2);
  });

  List<int> list2 = [50, 60];
  List<int> merged = [...list, ...list2];
  print(merged);

// 3.2
  var student = {'name': 'Ali', 'age': 22, 'grade': 'A'};
  student.forEach((key, value) {
    print(value);
  });

  student['city'] = 'Cairo';
  student['grade'] = 'B';
  print(student);

// Task 4

  stdout.write("Enter two numbers to add: ");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  addNumbers(a, b);

// 4.2
  stdout.write("Enter a number to square: ");
  int n = int.parse(stdin.readLineSync()!);
  print(square(n));

// 4.3
  stdout.write("Enter your name (or leave empty): ");
  String? inputName = stdin.readLineSync();
  stdout.write("Enter your city (or leave empty): ");
  String? inputCity = stdin.readLineSync();

  greet(
    name: inputName!.isEmpty ? null : inputName,
    city: inputCity!.isEmpty ? null : inputCity,
  );
}

void addNumbers(int a, int b) {
  print(a + b);
}

int square(int n) => n * n;

void greet({String? name, String? city}) {
  if (name == null) {
    print('Hello Guest');
  } else if (city == null) {
    print('Hello $name');
  } else {
    print('Hello $name from $city');
  }
}
