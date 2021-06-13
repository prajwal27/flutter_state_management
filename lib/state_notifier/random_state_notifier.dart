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

  void setMin(int x) {
    state = state.copyWith(min: x,generatedNumber:null);
  }

  void setMax(int x) {
    state = state.copyWith(max: x,generatedNumber:null);
  }

  void generateRandomNumber() {
    state = state.copyWith(generatedNumber:state.min + _random.nextInt(state.max + 1 - state.min));
  }
}