import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.appstoreIcon).existsSync(), isTrue);
    expect(File(Images.playstoreIcon).existsSync(), isTrue);
    expect(File(Images.profile).existsSync(), isTrue);
  });
}
