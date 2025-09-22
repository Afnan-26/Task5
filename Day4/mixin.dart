mixin Logger {
  void log(String msg) {
    print("[LOG]: $msg");
  }
}

mixin Printer {
  void printData(String data) {
    print("[DATA]: $data");
  }
}

class Report with Logger, Printer {
  void generateReport() {
    print("Report Generated");
  }
}
