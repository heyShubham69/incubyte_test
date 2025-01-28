class NegativeNumbersException implements Exception {
  final List<int> negativeNumbers;

  NegativeNumbersException(this.negativeNumbers);

  @override
  String toString() {
    return 'Negative numbers not allowed: ${negativeNumbers.join(", ")}';
  }
}
