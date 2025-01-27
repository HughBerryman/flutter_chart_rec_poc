import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fmi_core/ui/components/group/group_widget.dart';

void main(){
  group('GroupWidget', () {
    testWidgets("The group widget should display text with title information", (WidgetTester tester) async{
      String testTitle = "testTitle";

      MaterialApp app = MaterialApp(
          home: Scaffold(
              body: GroupWidget(title: testTitle)
          )
      );

      await tester.pumpWidget(app);

      final textFinder = find.text(testTitle);

      expect(textFinder, findsOneWidget);
    });
  });
}