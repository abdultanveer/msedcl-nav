import 'package:msedcl/calc.dart';
import 'package:test/test.dart';


void main() {
  group('Calc Class Tests', () {
    late Calc calc;

    // Set up a fresh instance before each test
    setUp(() {
      calc = Calc();
    });

    test('add() should return the sum of two positive integers', () {
      // Arrange
      final int a = 5;
      final int b = 10;

      // Act
      final int result = calc.add(a, b);

      // Assert
      expect(result, equals(15));
    });

    test('add() should handle negative numbers correctly', () {
      final int result = calc.add(-3, 7);
      expect(result, equals(4));
    });
  });
}