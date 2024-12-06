import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab15/main.dart';

void main() {
  testWidgets('Button exists', (WidgetTester tester) async{
    await tester.pumpWidget(const MyApp());

    final button = find.byType(FloatingActionButton);
    expect(button, findsOneWidget);

    final icon = tester.widget<FloatingActionButton>(button).child as Icon;
    expect(icon.icon, equals(Icons.camera_alt_outlined));
  });
}