import 'package:flutter/material.dart';
import 'package:flutter_application_basic/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomizerRiverPodPage extends ConsumerWidget {
  const RandomizerRiverPodPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetReference reference) {
    final randomizer = reference.watch(randomizerProvider);
    print("building");
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.read(randomizerProvider).generatedNumber?.toString() ?? 'Generate Number',
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
          context.read(randomizerProvider).generateRandomNumber();
        },
        label: Text("Generate"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
