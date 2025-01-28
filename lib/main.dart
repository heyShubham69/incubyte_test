import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'application/calculator_provider.dart';
import 'domain/usecases/add_string_numbers_usecase.dart';
import 'ui/screens/calculator_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CalculatorProvider(AddStringNumbersUseCase()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'String Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorScreen(),
    );
  }
}
