import 'dart:math';

import 'package:mobx/mobx.dart';

part 'dice_counter_store.g.dart';

class DiceCounterStore = _DiceCounterStore with _$DiceCounterStore;

abstract class _DiceCounterStore with Store {

  @observable
  int dice1 = 0;

  @observable
  bool progressDice1 = false;

  @action
  void rollDice1() {
    progressDice1 = true;
      Future.delayed(const Duration(seconds: 5), () {
       dice1 = Random().nextInt(6) + 1;
       progressDice1 = false;
    });
  }
}