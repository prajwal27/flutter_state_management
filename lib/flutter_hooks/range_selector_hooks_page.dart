import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../range_selector_form.dart';
import 'randomizer_hook_page.dart';

class RangeSelectorHooksPage extends HookWidget {
  RangeSelectorHooksPage({ Key? key }) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // hot restart if the order of the hooks is changed.
    final _min = useState<int>(0);
    final _max = useState<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Range Selector"),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: (x) => _min.value = x,
        maxValueSetter: (x) => _max.value = x,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.fast_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
          }
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RandomizerHooksPage(
                min: _min.value,
                max: _max.value,
              ),
            ),
          );
        },
      ),
    );
  }

}