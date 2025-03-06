import '../example/lib/math_package_by_ziyodulla.dart';
import 'package:test/test.dart';

void main() {
  group('Basic Math Operations', () {
    test('Addition', () {
      expect(add(5, 3), equals(8));
      expect(add(-2, 2), equals(0));
    });

    test('Subtraction', () {
      expect(subtract(10, 4), equals(6));
      expect(subtract(5, 8), equals(-3));
    });

    test('Multiplication', () {
      expect(multiply(7, 2), equals(14));
      expect(multiply(3, -3), equals(-9));
    });

    test('Division', () {
      expect(divide(8, 2), equals(4.0));
      expect(() => divide(5, 0), throwsArgumentError);
    });
  });

  group('Advanced Math Functions', () {
    test('Factorial', () {
      expect(factorial(0), equals(1));
      expect(factorial(5), equals(120));
      expect(() => factorial(-1), throwsArgumentError);
    });

    test('Average Calculation', () {
      expect(average([2, 4, 6, 8]), equals(5.0));
      expect(() => average([]), throwsArgumentError);
    });

    test('Degree-Radian Conversions', () {
      expect(toDegrees(3.141592653589793), closeTo(180.0, 0.001));
      expect(toRadians(180), closeTo(3.141592653589793, 0.001));
    });

    test(
      "To Find Mod ",
      () {
        expect(toModFind(12, 5), equals(2));
      },
    );
  });
}
