import 'dart:io';

class IOServise {
  String read(String s) {
    print(s);
    return stdin.readLineSync() ?? "";
  }

  int wrInt(String s) {
    write(s);
    return int.parse(stdin.readLineSync() ?? '');
  }

  void write(String s) => stdout.write(s);
}
