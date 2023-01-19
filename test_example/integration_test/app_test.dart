import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';
import 'package:test_example/helpers/constants.dart';
import 'package:test_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();
      //Arrange
      const String heigth = '1.67';
      const String weigth = '86';
      final weightTextField = find.byKey(const Key('textFieldWeight'));
      final heightTextField = find.byKey(const Key('textFieldHeight'));
      final calculateBMIButton =
          find.byType(ElevatedButton, skipOffstage: false).first;
      const String expectedBMICategory = UserMessages.badWeightMessage;
      //Act
      await tester.enterText(weightTextField, weigth);
      await tester.pump();
      await tester.enterText(heightTextField, heigth);
      await tester.pump();
      await tester.tap(calculateBMIButton);
      await tester.pumpAndSettle();
      //Assert
      expect(find.text(expectedBMICategory), findsOneWidget);
    });
  });
}