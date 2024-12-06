import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab15/main.dart';

void main() {
  test('Test of function', () {
    expect(Calculate.count(6), 234);
  });
}