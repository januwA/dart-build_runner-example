import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/demo_generator_base.dart';

Builder demo(BuilderOptions opt) =>
    SharedPartBuilder([DemoGenerator()], 'demo');
