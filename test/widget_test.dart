// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quest/presentation/app.dart';

void main() {
  testWidgets(
    'The "Hello" is exist',
    (WidgetTester tester) async {
      // Build our app and trigger a frame.
      //
      // We declare "ProviderScope" as riverpod requirements,
      // and follows the runApp method for the tests to pass.
      await tester.pumpWidget(
        const ProviderScope(
          child: QuestApp(),
        ),
      );

      // Verify that our "hello app" has "Xaltius Quest".
      expect(find.text('Hello'), findsOneWidget);
    },
  );
}
