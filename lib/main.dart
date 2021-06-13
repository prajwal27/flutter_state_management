import 'package:flutter/material.dart';
import 'package:flutter_application_basic/change_notifier/random_change_notifier.dart';
import 'package:flutter_application_basic/state_notifier/random_state_notifier.dart';
import 'package:flutter_application_basic/state_notifier/range_selector_state_notifier_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(AppWidget());
}

/*
For Normal setState and Hook Examples.
*/
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: RangeSelectorHooksPage(),
//     );
//   }
// }

/*
For Change Notifier example
*/
// class AppWidget extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => RandomChangeNotifier(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: RangeSelectorChangeNotiferPage(),
//       ),
//     );
//   }
// }

final randomizerProvider = ChangeNotifierProvider((ref) => RandomChangeNotifier());

// class AppWidget extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ProviderScope(
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         home: RangeSelectorRiverPodPage(),
//       ),
//     );
//   }
// }

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
