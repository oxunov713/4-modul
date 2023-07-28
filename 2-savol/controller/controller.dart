import '../ioservise/ioservise.dart';
import '../list/for_in.dart';
import '../list/kategoriya.dart';
import '../validation/valid.dart';
import '../widget/widget.dart';

class LangController extends Widget {
  IOServise io = IOServise();
  ForIn _forIn = ForIn();
  Validation _valid = Validation();
  LangController(this.io);
  @override
  void build() {
    int language = io.wrInt("""Assalomu alaykum 
  Qaysi tilni tanlamoqchisiz: 
  1.Uzbek
  2.English
  3.Russian
  """);
  
    language = _valid.isTrueChoose(language);
    _forIn.forIn(category[language - 1]);
  }
}
