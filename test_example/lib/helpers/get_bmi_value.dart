import 'dart:math';

import 'package:test_example/helpers/constants.dart';

bool isValidUserValues(double weight, double height) {
  bool isValid = true;
  bool isCurrentHeightInvalid = height == IndicatorValues.invalidInputIndicator;
  bool isCurrentWeightInvalid = weight == IndicatorValues.invalidInputIndicator;
  if (isCurrentWeightInvalid || isCurrentHeightInvalid ) {
    isValid = false;
  }
  return isValid;
}

String getBMICategory(double weight, double height) {
  String categoryBmi;
  if (isValidUserValues(weight, height)) {
    final double bmi = weight / (pow(height, 2));
    categoryBmi = setBMICategory(bmi);
  } else {
    categoryBmi = UserMessages.userInvalidInputsMessage;
  }

  return categoryBmi;
}

String setBMICategory(double bmi) {
  final String categoryBmi;
  if (bmi <= 18.4) {
    categoryBmi = UserMessages.lowWeightMessage;
  } else if (bmi <= 24.9) {
    categoryBmi = UserMessages.healthyWeightMessage;
  } else if (bmi <= 29.9) {
    categoryBmi = UserMessages.littleBadWeigthMessage;
  } else if (bmi <= 34.9) {
    categoryBmi = UserMessages.badWeightMessage;
  } else if (bmi <= 39.9) {
    categoryBmi = UserMessages.obeseWeightMessage;
  } else {
    categoryBmi = UserMessages.severelyObeseWeightMessage;
  }
  return categoryBmi;
}
