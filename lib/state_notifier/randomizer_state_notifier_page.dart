import 'package:flutter/material.dart';
import 'package:flutter_application_basic/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomizerStateNotifierPage extends ConsumerWidget {
  const RandomizerStateNotifierPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetReference reference) {
    final randomizer = reference.watch(randomizerStateProvider);
    print("building ${randomizer.min}");
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              randomizer.generatedNumber?.toString() ?? 'Generate Number',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("pressed");
         context.read(randomizerStateProvider.notifier).generateRandomNumber();
        },
        label: Text("Generate"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
