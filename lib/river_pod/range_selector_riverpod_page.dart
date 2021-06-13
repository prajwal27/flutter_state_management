import 'package:flutter/material.dart';
import 'package:flutter_application_basic/main.dart';
import 'package:flutter_application_basic/range_selector_form.dart';
import 'package:flutter_application_basic/river_pod/randomizer_riverpod_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RangeSelectorRiverPodPage extends StatelessWidget {
  RangeSelectorRiverPodPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print("building RangeSelectorRiverPodPage");
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Selector"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (x) => context.read(randomizerProvider).min = x,
        maxValueSetter: (x) => context.read(randomizerProvider).max = x,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.fast_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RandomizerRiverPodPage(),
            ),
          );
        },
      ),
    );
  }
}
