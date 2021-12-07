import 'package:cubit_test/ui/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TestCubit());
}

class TestCubit extends StatelessWidget {
  const TestCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Cubit '),
        ),
        body: const Counter(),
      ),
    );
  }
}
