import 'controller/controller.dart';
import 'ioservise/ioservise.dart';
import 'widget/widget.dart';

void main() {
  IOServise io=IOServise();
  runApp(LangController(io));
}
