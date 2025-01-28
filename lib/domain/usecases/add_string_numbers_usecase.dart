class AddStringNumbersUseCase {
  int call(String numbers) {
    if (numbers.isEmpty) return 0;

    final delimiter = _extractDelimiter(numbers);
    final sanitizedNumbers = _sanitizeNumbers(numbers, delimiter);
    final parsedNumbers = _parseNumbers(sanitizedNumbers, delimiter);

    _checkForNegatives(parsedNumbers);

    return _calculateSum(parsedNumbers);
  }

  String _extractDelimiter(String numbers) {
    if (numbers.startsWith("//")) {
      final delimiterLine = numbers.split("\n")[0];
      return delimiterLine.substring(2);
    }
    return ",";
  }

  String _sanitizeNumbers(String numbers, String delimiter) {
    if (numbers.startsWith("//")) {
      final index = numbers.indexOf("\n");
      return numbers.substring(index + 1).replaceAll("\n", delimiter);
    }
    return numbers.replaceAll("\n", delimiter);
  }

  List<int> _parseNumbers(String numbers, String delimiter) {
    return numbers.split(delimiter).map(int.parse).toList();
  }

  void _checkForNegatives(List<int> numbers) {
    final negatives = numbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception("Negative numbers not allowed: ${negatives.join(", ")}");
    }
  }

  int _calculateSum(List<int> numbers) {
    return numbers.reduce((a, b) => a + b);
  }
}
