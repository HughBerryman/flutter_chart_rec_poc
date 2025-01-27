import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fmi_core/ui/components/closeableAppBar/closable_app_bar.dart';

void main(){
  group('ClosableAppBar', () {
    testWidgets("Save should be visible when callback is available", (WidgetTester tester) async{
      String testTitle = "testTitle";

      MaterialApp app = MaterialApp(
        home: ClosableAppBar(title: testTitle, onClose: (){}, onSave: (){}),
      );

      await tester.pumpWidget(app);

      final textFinder = find.text("Save");

      expect(textFinder, findsOneWidget);
    });

    testWidgets("Save should not be visible when callback is not available", (WidgetTester tester) async{
      String testTitle = "testTitle";

      MaterialApp app = MaterialApp(
        home: ClosableAppBar(title: testTitle, onClose: (){}, onSave: null),
      );

      await tester.pumpWidget(app);

      final textFinder = find.text("Save");

      expect(textFinder, findsNothing);
    });

    testWidgets("Title should be visible", (WidgetTester tester) async{
      String testTitle = "testTitle";

      MaterialApp app = MaterialApp(
        home: ClosableAppBar(title: testTitle, onClose: (){}, onSave: null),
      );

      await tester.pumpWidget(app);

      final textFinder = find.text(testTitle);

      expect(textFinder, findsOneWidget);
    });
  });
}