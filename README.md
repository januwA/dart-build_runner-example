## 这是关于 dart build_renner 生成代码的example

这方面的文档太少了

- [build_config README](https://github.com/dart-lang/build/blob/master/build_config/README.md)
- [Build.yaml](https://github.com/dart-lang/build/blob/master/docs/build_yaml_format.md)
- [video](https://www.youtube.com/watch?v=mYDFOdl-aWM)


## 使用装饰器`argument`
```dart
// example.dart

import 'package:demo/demo.dart';

part 'example.g.dart';

@argument
class Klass {
  static int i = 0;

  String name = 'xxx';
  final int age = 12;

  void show() {}
}
```

执行编译命令
```sh
> pub run build_runner build
```

编译后的`example.g.dart`
```dart
class KlassArguments {
  String name;
  int age;
  KlassArguments({
    this.name,
    this.age,
  });
  @override
  String toString() => '''{
  "name": $name,
  "age": $age,
}''';
  Map toMap() => {
        'name': name,
        'age': age,
      };
}
```


## 使用
```dart
import 'package:example/example.dart';

void main() {
  var arg = KlassArguments();
  arg
    ..name = 'ajanuw'
    ..age = 1;
  print(arg);
  print(arg.toMap());
}
```