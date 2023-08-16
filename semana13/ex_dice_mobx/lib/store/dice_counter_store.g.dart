// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DiceCounterStore on _DiceCounterStore, Store {
  late final _$dice1Atom =
      Atom(name: '_DiceCounterStore.dice1', context: context);

  @override
  int get dice1 {
    _$dice1Atom.reportRead();
    return super.dice1;
  }

  @override
  set dice1(int value) {
    _$dice1Atom.reportWrite(value, super.dice1, () {
      super.dice1 = value;
    });
  }

  late final _$progressDice1Atom =
      Atom(name: '_DiceCounterStore.progressDice1', context: context);

  @override
  bool get progressDice1 {
    _$progressDice1Atom.reportRead();
    return super.progressDice1;
  }

  @override
  set progressDice1(bool value) {
    _$progressDice1Atom.reportWrite(value, super.progressDice1, () {
      super.progressDice1 = value;
    });
  }

  late final _$_DiceCounterStoreActionController =
      ActionController(name: '_DiceCounterStore', context: context);

  @override
  void rollDice1() {
    final _$actionInfo = _$_DiceCounterStoreActionController.startAction(
        name: '_DiceCounterStore.rollDice1');
    try {
      return super.rollDice1();
    } finally {
      _$_DiceCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dice1: ${dice1},
progressDice1: ${progressDice1}
    ''';
  }
}
