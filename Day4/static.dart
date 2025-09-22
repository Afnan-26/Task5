class Counter {
  static int count = 0;

  Counter() {
    count++;
  }
  static void getCount() {
    print("Total objects created = $count");
  }
}
