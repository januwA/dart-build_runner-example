import 'package:example/example.dart';

void main() {
  var arg = KlassArguments();
  arg
    ..name = 'ajanuw'
    ..age = 1;
  print(arg);
  print(arg.toMap());
}
