import 'package:flutter/material.dart';
import '../domain/usecases/add_string_numbers_usecase.dart';

class CalculatorProvider extends ChangeNotifier {
  final AddStringNumbersUseCase _addStringNumbersUseCase;

  CalculatorProvider(this._addStringNumbersUseCase);

  String? _result;
  String? _errorMessage;

  String? get result => _result;
  String? get errorMessage => _errorMessage;

  void calculate(String input) {
    try {
      // Clear previous errors
      _errorMessage = null;
      _result = null;

      // Perform calculation
      final sum = _addStringNumbersUseCase(input);
      _result = sum.toString();
    } catch (e) {
      _errorMessage = e.toString();
    }
    notifyListeners();
  }
}
