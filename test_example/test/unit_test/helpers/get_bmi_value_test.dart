import 'package:flutter_test/flutter_test.dart';
import 'package:test_example/helpers/constants.dart';
import 'package:test_example/helpers/get_bmi_value.dart';

void main() {
  group('Testing isValidUserValues method', () {
    test('should be false because the values are invalid', () {
      //Arrenge
      const double inValidHeight = IndicatorValues.invalidInputIndicator;
      const double validWeight = 45.0;
      const bool expectedValue = false;
      //Act 
      final bool currentValue = isValidUserValues(validWeight,inValidHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
    test('should be true because the values are valid', () {
      //Arrenge
      const double validHeight = 1.67 ;
      const double validWeight = 86.0;
      const bool expectedValue = true;
      //Act 
      final bool currentValue = isValidUserValues(validWeight,validHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
  });
  group('Testing getBMICategory method', () {
    test('should be return invalid inputs message ', () {
      //Arrenge
      const double inValidHeight = IndicatorValues.invalidInputIndicator;
      const double validWeight = 45.0;
      const String expectedValue = UserMessages.userInvalidInputsMessage;
      //Act 
      final String currentValue = getBMICategory(validWeight,inValidHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
    test('should be low weight category', () {
      //Arrenge
      const double validHeight = 1.67 ;
      const double validWeight = 50.0;
      const String expectedValue = UserMessages.lowWeightMessage;
      //Act 
      final String currentValue = getBMICategory(validWeight,validHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
    test('should be healthy weight category', () {
      //Arrenge
      const double validHeight = 1.67 ;
      const double validWeight = 65.0;
      const String expectedValue = UserMessages.healthyWeightMessage;
      //Act 
      final String currentValue = getBMICategory(validWeight,validHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
    test('should be little bad Weigth category', () {
      //Arrenge
      const double validHeight = 1.67 ;
      const double validWeight = 72.0;
      const String expectedValue = UserMessages.littleBadWeigthMessage;
      //Act 
      final String currentValue = getBMICategory(validWeight,validHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
    test('should be bad weight category', () {
      //Arrenge
      const double validHeight = 1.67 ;
      const double validWeight = 86.0;
      const String expectedValue = UserMessages.badWeightMessage;
      //Act 
      final String currentValue = getBMICategory(validWeight,validHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
    test('should be obese category', () {
      //Arrenge
      const double validHeight = 1.67 ;
      const double validWeight = 98.0;
      const String expectedValue = UserMessages.obeseWeightMessage;
      //Act 
      final String currentValue = getBMICategory(validWeight,validHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
    test('should be severely obese category', () {
      //Arrenge
      const double validHeight = 1.67 ;
      const double validWeight = 118.0;
      const String expectedValue = UserMessages.severelyObeseWeightMessage;
      //Act 
      final String currentValue = getBMICategory(validWeight,validHeight);
      //Assert
      expect(currentValue, expectedValue);
    });
  });
}
