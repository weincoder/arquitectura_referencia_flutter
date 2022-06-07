import 'dart:developer';

import 'package:design_system_weincode/molecules/circle_accionable_card.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
    Widget fakeMaterialAppHomePage() {
    return  MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: 500,
          width: 300,
          child: WeincodeCircleAccionableCard(
              nameOfCardLabel: 'Alien',
              descriptionOfActionLabel: 'show Alien Info',
              routeAssetImage: 'assets/images/success.png',
              title: 'Alien',
              actionCard: () {
                log('We show an alien 👽');
              }),
        ),
      ),
    );
  }
  group('check accesibility labels 🧐', () {
    testWidgets('Check we can find the widget using his semantic label 🤯',
        (WidgetTester tester) async {
      //Arrenge
      await tester.pumpWidget(fakeMaterialAppHomePage());
      const String expectedLabel = 'Tap the Alien card to execute show Alien Info';
      //Act
      final circleAccionableCardByLabel = find.bySemanticsLabel(expectedLabel);
      //Assert
      expect(circleAccionableCardByLabel, findsOneWidget);
    });
  });
}
