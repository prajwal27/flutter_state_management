import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RandomizerHooksPage extends HookWidget {
  RandomizerHooksPage({
    Key? key,
    required this.min,
    required this.max,
  }) : super(key: key);

  final int min, max;
  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    final _generatedNumber = useState<int?>(null);
    print("generated number ${_generatedNumber.value}");
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          _generatedNumber.value?.toString() ?? 'Generate Number',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _generatedNumber.value =
              min + randomGenerator.nextInt(max + 1 - min);
        },
        label: Text("Generate"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
