import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab15/main.dart';

void main() {

  testWidgets('Title test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    final pattern = RegExp(r"^[A-Za-z]+-[0-9]+: [A-Za-z]+'s last Flutter App$");

    final matchingTextFinder = find.byWidgetPredicate((widget) {
      return widget is Text && pattern.hasMatch(widget.data ?? '');
    });

    expect(matchingTextFinder, findsOneWidget);
  });
}