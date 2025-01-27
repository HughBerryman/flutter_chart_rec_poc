import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fmi_core/ui/components/radioButtons/radio_button_group_widget.dart';

void main(){
  group('RadioButtonGroup', () {
    testWidgets("Each radio option should result in a radio button option rendered", (WidgetTester tester) async{
      String testOptionOne = "testOptionOne";
      String testOptionTwo = "testOptionTwo";

      MaterialApp app = MaterialApp(
        home: Scaffold(
            body: RadioButtonGroupWidget(radioOptions: [testOptionOne, testOptionTwo],)
        )
      );

      await tester.pumpWidget(app);

      final textFinderOne = find.text(testOptionOne);
      final textFinderTwo = find.text(testOptionTwo);

      expect(textFinderOne, findsOneWidget);
      expect(textFinderTwo, findsOneWidget);
    });
  });
}