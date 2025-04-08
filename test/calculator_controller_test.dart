import 'package:flutter_test/flutter_test.dart';
import 'package:octocov_test_flutter/controller/calculator_controller.dart';

void main() {
  late CalculatorController calculator;

  setUp(() {
    calculator = CalculatorController();
  });

  group('CalculatorController', () {
    test('足し算が正しく動作すること', () {
      expect(calculator.add(2, 3), equals(5));
      expect(calculator.add(-1, 1), equals(0));
      expect(calculator.add(0, 0), equals(0));
    });

    test('引き算が正しく動作すること', () {
      expect(calculator.subtract(5, 3), equals(2));
      expect(calculator.subtract(1, 1), equals(0));
      expect(calculator.subtract(0, 5), equals(-5));
    });

    test('掛け算が正しく動作すること', () {
      expect(calculator.multiply(2, 3), equals(6));
      expect(calculator.multiply(-2, 3), equals(-6));
      expect(calculator.multiply(0, 5), equals(0));
    });

    test('割り算が正しく動作すること', () {
      expect(calculator.divide(6, 2), equals(3.0));
      expect(calculator.divide(5, 2), equals(2.5));
      expect(calculator.divide(0, 5), equals(0.0));
    });

    test('0での割り算で例外が発生すること', () {
      expect(() => calculator.divide(5, 0), throwsException);
    });
  });
}
