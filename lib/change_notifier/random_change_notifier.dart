import 'dart:math';

import 'package:flutter/foundation.dart';

class RandomChangeNotifier extends ChangeNotifier {
  final _random = Random();

  int _min = 0, _max = 0;
  int? _generatedNumber;

  int? get generatedNumber => _generatedNumber;

  set min(int x) {
    _generatedNumber = null;
    _min = x;
  }

  set max(int x) {
    _generatedNumber = null;
    _max = x;
  }

  void generateRandomNumber() {
    _generatedNumber = _min + _random.nextInt(_max + 1 - _min);
    notifyListeners();
  }
}
