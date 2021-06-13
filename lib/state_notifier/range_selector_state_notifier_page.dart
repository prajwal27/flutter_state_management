import 'package:flutter/material.dart';
import 'package:flutter_application_basic/main.dart';
import 'package:flutter_application_basic/range_selector_form.dart';
import 'package:flutter_application_basic/state_notifier/randomizer_state_notifier_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RangeSelectorStateNotifierPage extends StatelessWidget {
  RangeSelectorStateNotifierPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print("building RangeSelectorStateNotifierPage");
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Selector"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (x) => context.read(randomizerStateProvider.notifier).setMin(x),
        maxValueSetter: (x) => context.read(randomizerStateProvider.notifier).setMax(x),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.fast_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RandomizerStateNotifierPage(),
            ),
          );
        },
      ),
    );
  }
}
