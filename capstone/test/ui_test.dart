import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:capstone/view/profile/faq_screen.dart';

void main() {
  testWidgets('Mencari Tombol Back Di Faq_Page', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp
    (home: Faq_Page()
    ));

    final backButtonFinder = find.byIcon(Icons.arrow_back_ios);
    expect(backButtonFinder, findsOneWidget);
  });

  testWidgets('Test Tombol Back Di Faq_Page akan Navigator.pop',
      (WidgetTester tester) async {
    final navigatorKey = GlobalKey<NavigatorState>();

    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: navigatorKey,
        home: const Faq_Page(),
      ),
    );

    final backButtonFinder = find.byIcon(Icons.arrow_back_ios);
    expect(backButtonFinder, findsOneWidget);
    await tester.tap(backButtonFinder);
    await tester.pump();

    expect(navigatorKey.currentState!.canPop(), isFalse);
  });
}
