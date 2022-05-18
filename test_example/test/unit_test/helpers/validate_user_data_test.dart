import 'package:flutter_test/flutter_test.dart';
import 'package:test_example/helpers/constants.dart';
import 'package:test_example/helpers/validate_user_data.dart';

void main() {
  group('Testing isValidUserValue', () {
    //global values
    const double minValue = 0.13;
    const double maxValue = 2.0;
    test('should return error because is greather than expected', () {
      //Arrenge
      const double fakeGreatherValue = 3.3;
      //Act
      try {
        isValidateUserValue(fakeGreatherValue, minValue, maxValue);
      } catch (e) {
        //assert
        expect(e, DeveloperMessages.entryValueErrorMessage);
      }
    });
    test('should return error because the value is 0', () {
      //Arrenge
      const double fakeMinValue = 0;
      //Act
      try {
        isValidateUserValue(fakeMinValue, minValue, maxValue);
      } catch (e) {
        //assert
        expect(e, DeveloperMessages.entryValueErrorMessage);
      }
    });

    test('should return true becaues is valid value', () {
      //Arrenge
      const double fakeValidValue = 1.67;
      const bool expectedValue = true;
      //Act
      final isCurrentHeightValid = isValidateUserValue(fakeValidValue, minValue, maxValue);
      //assert
      expect(isCurrentHeightValid, expectedValue);
    });
  });

  group('testing getHeight', () {
    test('should return -1 because the value is not a number', () {
      //Arrenge
      const String fakeHeight = "12sad";
      const double expectedValue = -1;
      //Act
      final currentHeight = getHeight(fakeHeight);
      //assert
      expect(currentHeight, expectedValue);
    });
    test('should return a double with the expected value', () {
      //Arrenge
      const String fakeHeight = "1.67";
      const double expectedValue = 1.67;
      //Act
      final currentHeight = getHeight(fakeHeight);
      //assert
      expect(currentHeight, expectedValue);
    });
  });
  group('testing getWeight', (){

    test('should return -1 because the value is not a number', () {
      //Arrenge
      const String fakeWeight = "12sad";
      const double expectedValue = -1;
      //Act
      final currentWeight = getWeight(fakeWeight);
      //assert
      expect(currentWeight, expectedValue);
    });
    test('should return a double with the expected value', () {
      //Arrenge
      const String fakeWeight = "87";
      const double expectedValue = 87;
      //Act
      final currentWeight = getWeight(fakeWeight);
      //assert
      expect(currentWeight, expectedValue);
    });
  });
  
}
