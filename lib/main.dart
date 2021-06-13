import 'package:flutter/material.dart';
import 'package:flutter_application_basic/state_notifier/random_state_notifier.dart';
import 'package:flutter_application_basic/state_notifier/range_selector_state_notifier_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(AppWidget());
}

final randomizerStateProvider =
    StateNotifierProvider<RandomStateNotifier, RandomState>(
        (ref) => RandomStateNotifier());

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: RangeSelectorStateNotifierPage(),
      ),
    );
  }
}
