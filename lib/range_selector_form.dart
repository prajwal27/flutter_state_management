import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm({
    Key? key,
    required this.formKey,
    required this.minValueSetter,
    required this.maxValueSetter,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;
  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextFormField(
              label: "Minimum Range",
              intValueSetter:minValueSetter,
            ),
            SizedBox(
              height: 10,
            ),
            RangeSelectorTextFormField(
              label: "Maximum Range",
              intValueSetter: maxValueSetter,
            ),
          ],
        ),
      ),
    );
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    Key? key,
    required this.label,
    required this.intValueSetter,
  }) : super(key: key);

  final String label;
  final IntValueSetter intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:
          TextInputType.numberWithOptions(decimal: false, signed: true),
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: label),
      onSaved: (String? value) => intValueSetter(int.parse(value ?? '')),
      validator: (String? value) {
        if (value == null || int.tryParse(value) == null) {
          return 'Enter valid Integer';
        }
      },
    );
  }
}
