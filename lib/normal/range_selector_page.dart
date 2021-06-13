import 'package:flutter/material.dart';
import 'package:flutter_application_basic/normal/randomizer_page.dart';
import 'package:flutter_application_basic/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  RangeSelectorPage({Key? key}) : super(key: key);

  @override
  _RangeSelectorPageState createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();

  int _min = 0;
  int _max = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Selector"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (x) => _min = x,
        maxValueSetter: (x) => _max = x,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.fast_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RandomizerPage(
                min: _min,
                max: _max,
              ),
            ),
          );
        },
      ),
    );
  }
}
