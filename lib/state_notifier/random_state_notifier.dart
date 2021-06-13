import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_state_notifier.freezed.dart';

@freezed
class RandomState with _$RandomState {
  const RandomState._();
  const factory RandomState({
    @Default(0) int min,
    @Default(0) int max,
    int? generatedNumber,
  }) = _RandomState;
}

class RandomStateNotifier extends StateNotifier<RandomState> {
  final _random = Random();


  RandomStateNotifier() : super(RandomState());

  int? get generatedNumber => state.generatedNumber;

  void setMin(int x) {
    print("setting min");
    state.copyWith(min: x,generatedNumber:null);
  }

  void setMax(int x) {
    print("setting Max ${state.min}");
    state.copyWith(max: x,generatedNumber:null);
  }

  void generateRandomNumber() {
    print("1");
    state.copyWith(generatedNumber:state.min + _random.nextInt(state.max + 1 - state.min));
  }
}