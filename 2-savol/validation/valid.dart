import '../ioservise/ioservise.dart';

class Validation {
  IOServise io = IOServise();

  int isTrueChoose(int n) {
    while (true) {
      if (n > 0 && n < 4) {
        break;
      }
      n = io.wrInt("Bu til mavjud emas,faqat bizdagi tillardan tanlang");
    }
    return n;
  }
}
