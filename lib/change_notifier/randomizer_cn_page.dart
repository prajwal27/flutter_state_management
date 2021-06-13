import 'package:flutter/material.dart';
import 'package:flutter_application_basic/change_notifier/random_change_notifier.dart';
import 'package:provider/provider.dart';

class RandomizerChangeNotiferPage extends StatelessWidget {
  const RandomizerChangeNotiferPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("building");
    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
        // child: Text(
        //   context.watch<RandomChangeNotifier>().generatedNumber?.toString() ??
        //       'Generate Number',
        //   style: TextStyle(
        //     fontSize: 32,
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<RandomChangeNotifier>(
              builder: (context, notifier, child) {
                return Text(
                  notifier.generatedNumber?.toString() ?? 'Generate Number',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                );
              },
            ),
            SizedBox(height: 10,),
            Consumer<RandomChangeNotifier>(
              builder: (context, notifier, child) {
                return Text(
                  notifier.generatedNumber?.toString() ?? 'Generate Number',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("pressed");
          context.read<RandomChangeNotifier>().generateRandomNumber();
        },
        label: Text("Generate"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
