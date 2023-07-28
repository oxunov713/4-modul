import '../ioservise/ioservise.dart';
import '../list/kategoriya.dart';
import '../widget/widget.dart';

class LangController extends Widget {
  IOServise io = IOServise();
  @override
  void build() {
    int language = io.wrInt("""Assalomu alaykum 
  Qaysi tilni tanlamoqchisiz: 
  1.Uzbek
  2.English
  3.Russian
  """);
    io.write("${  }");
  }
}
