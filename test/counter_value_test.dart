import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab15/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    final state = tester.state<MyHomePageState>(find.byType(MyHomePage));

    expect(state.counter, 0);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.camera_alt_outlined));
    await tester.pump();

    expect(state.counter, 6);
  });
}