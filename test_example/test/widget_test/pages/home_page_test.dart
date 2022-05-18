import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_example/helpers/constants.dart';
import 'package:test_example/pages/home_page.dart';

void main() {
  //global definitions
  Widget fakeMaterialAppHomePage() {
    return const MaterialApp(
      home: HomePage(title: 'Amazing 🧪 test🤯'),
    );
  }

  group('Find the home page widgets', () {
    testWidgets('Check we can find the height textfield',
        (WidgetTester tester) async {
      //Arrenge
      await tester.pumpWidget(fakeMaterialAppHomePage());
      //Act
      final heightTextField = find.byKey(const Key('textFieldHeight'));
      //Assert
      expect(heightTextField, findsOneWidget);
    });
    testWidgets('Check we can find the weight textfield',
        (WidgetTester tester) async {
      //Arrenge
      await tester.pumpWidget(fakeMaterialAppHomePage());
      //Act
      final weightTextField = find.byKey(const Key('textFieldWeight'));
      // Assert
      expect(weightTextField, findsOneWidget);
    });

    testWidgets('Check we can find the  calculate BMI  button',
        (WidgetTester tester) async {
      //Arrenge
      await tester.pumpWidget(fakeMaterialAppHomePage());
      //Act
      final calculateBMIButton =
          find.byType(ElevatedButton, skipOffstage: false);
      //Assert
      expect(calculateBMIButton, findsOneWidget);
    });
  });

  group('Interaction with Home Page Widgets', () {
    testWidgets('Check we can type in the height textfield',
        (WidgetTester tester) async {
      // Arrenge
      await tester.pumpWidget(fakeMaterialAppHomePage());
      const String heigth = '1.67';
      final heightTextField = find.byKey(const Key('textFieldHeight'));
      // Act
      await tester.enterText(heightTextField, heigth);
      await tester.pump();
      // Assert
      expect(find.text(heigth), findsOneWidget);
    });
    testWidgets('Check we can avoid add letters into the weight textfield',
        (WidgetTester tester) async {
      //Arrenge
      await tester.pumpWidget(fakeMaterialAppHomePage());
      const String weigth = '24as';
      const String expectedValue = '24';
      final weightTextField = find.byKey(const Key('textFieldWeight'));
      //Act
      await tester.enterText(weightTextField, weigth);
      await tester.pump();
      //Assert
      expect(find.text(expectedValue), findsOneWidget);
    });


    testWidgets('check we can calculate the BMI', (WidgetTester tester) async {
      //Arrange
      await tester.pumpWidget(fakeMaterialAppHomePage());
      const String heigth = '1.67';
      const String weigth = '86';
      final weightTextField = find.byKey(const Key('textFieldWeight'));
      final heightTextField = find.byKey(const Key('textFieldHeight'));
      final calculateBMIButton =
          find.byType(ElevatedButton, skipOffstage: false).first;
      //Act
      await tester.enterText(weightTextField, weigth);
      await tester.pump();
      await tester.enterText(heightTextField, heigth);
      await tester.pump();
      await tester.press(calculateBMIButton);
      final findElement = find.text(UserMessages.badWeightMessage);
      expect(find.text(UserMessages.badWeightMessage), findsOneWidget);
    });
  });

  //   testWidgets('Check we can press the save password button',
  //       (WidgetTester tester) async {
  //     await tester.pumpWidget(MyApp());
  //     var password = 'Oscar123';

  //     await tester.enterText(find.byType(PasswordTextField), password);
  //     expect(find.byType(PasswordChip), findsNothing);
  //     expect(find.widgetWithText(PasswordTextField, password), findsOneWidget);

  //     final widget1 = find.byType(SaveButtonPassword);
  //     await tester.tap(widget1);
  //     //await tester.press(widget1); //press not working
  //     await tester.pumpAndSettle();

  //     //We should find textfield empty and listtile with the password added
  //     expect(find.widgetWithText(PasswordTextField, ''), findsOneWidget);
  //     expect(find.byType(PasswordChip), findsOneWidget);
  //   });
  // });
}
