
import 'dart:developer';

import 'package:test_example/helpers/constants.dart';

double getWeight(String weight){
  double currentWeigthValue;
  const double maxWeight = 1200.0;
  const double minWeight = 2.0;
  try {
    currentWeigthValue =  double.parse(weight);
    isValidateUserValue(currentWeigthValue, minWeight, maxWeight);
  } catch (e) {
    log(e.toString());
    currentWeigthValue = IndicatorValues.invalidInputIndicator;
  }
  return currentWeigthValue;
}
double getHeight(String height){
  double currentHeigthValue;
  const double maxHeight = 3.0;
  const double minHeight = 0.45;
  try {
    currentHeigthValue =  double.parse(height);
    isValidateUserValue(currentHeigthValue, minHeight, maxHeight);
  } catch (e) {
    log(e.toString());
    currentHeigthValue = IndicatorValues.invalidInputIndicator;
  }
  return currentHeigthValue;
}

bool isValidateUserValue (double entryValue, double minValue, double maxValue){
  bool isValidWeithInput = true; 
  if (entryValue >maxValue || entryValue <= minValue){
    throw(DeveloperMessages.entryValueErrorMessage);
  }
  return isValidWeithInput;
}

