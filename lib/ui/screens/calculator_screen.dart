import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../application/calculator_provider.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('String Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter numbers',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final input = _controller.text;
                context.read<CalculatorProvider>().calculate(input);
              },
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            Consumer<CalculatorProvider>(
              builder: (context, provider, child) {
                if (provider.errorMessage != null) {
                  return Text(
                    provider.errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  );
                } else if (provider.result != null) {
                  return Text(
                    'Result: ${provider.result}',
                    style: const TextStyle(fontSize: 20),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
