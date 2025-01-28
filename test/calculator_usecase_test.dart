import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_test/domain/usecases/add_string_numbers_usecase.dart';

void main() {
  late AddStringNumbersUseCase useCase;

  setUp(() {
    useCase = AddStringNumbersUseCase();
  });

  test('should return 0 for an empty string', () {
    final result = useCase("");
    expect(result, 0);
  });

  test('should return the number itself for a single number', () {
    final result = useCase("5");
    expect(result, 5);
  });

  test('should return the sum of two numbers', () {
    final result = useCase("1,2");
    expect(result, 3);
  });

  test('should handle multiple numbers', () {
    final result = useCase("1,2,3,4");
    expect(result, 10);
  });

  test('should handle new line as a delimiter', () {
    final result = useCase("1\n2,3");
    expect(result, 6);
  });

  test('should support custom delimiters', () {
    final result = useCase("//;\n1;2");
    expect(result, 3);
  });

  test('should throw an exception for negative numbers', () {
    expect(
      () => useCase("1,-2,-3"),
      throwsA(predicate((e) =>
          e is Exception &&
          e.toString() == "Exception: Negative numbers not allowed: -2, -3")),
    );
  });
}
