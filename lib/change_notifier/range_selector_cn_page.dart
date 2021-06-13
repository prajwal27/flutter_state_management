import 'package:flutter/material.dart';
import 'package:flutter_application_basic/range_selector_form.dart';
import 'package:provider/provider.dart';

import 'random_change_notifier.dart';
import 'randomizer_cn_page.dart';

class RangeSelectorChangeNotiferPage extends StatefulWidget {
  RangeSelectorChangeNotiferPage({Key? key}) : super(key: key);

  @override
  _RangeSelectorChangeNotiferPageState createState() => _RangeSelectorChangeNotiferPageState();
}

class _RangeSelectorChangeNotiferPageState extends State<RangeSelectorChangeNotiferPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Selector"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (x) => context.read<RandomChangeNotifier>().min = x,
        maxValueSetter: (x) => context.read<RandomChangeNotifier>().max = x,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.fast_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RandomizerChangeNotiferPage(),
            ),
          );
        },
      ),
    );
  }
}
