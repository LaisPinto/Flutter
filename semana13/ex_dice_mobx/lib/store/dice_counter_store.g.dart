// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DiceCounterStore on _DiceCounterStore, Store {
  Computed<int>? _$getDice1Computed;

  @override
  int get getDice1 =>
      (_$getDice1Computed ??= Computed<int>(() => super.getDice1,
              name: '_DiceCounterStore.getDice1'))
          .value;
  Computed<bool>? _$getProgressDice1Computed;

  @override
  bool get getProgressDice1 => (_$getProgressDice1Computed ??= Computed<bool>(
          () => super.getProgressDice1,
          name: '_DiceCounterStore.getProgressDice1'))
      .value;
  Computed<int>? _$getDice2Computed;

  @override
  int get getDice2 =>
      (_$getDice2Computed ??= Computed<int>(() => super.getDice2,
              name: '_DiceCounterStore.getDice2'))
          .value;
  Computed<bool>? _$getProgressDice2Computed;

  @override
  bool get getProgressDice2 => (_$getProgressDice2Computed ??= Computed<bool>(
          () => super.getProgressDice2,
          name: '_DiceCounterStore.getProgressDice2'))
      .value;
  Computed<int>? _$getSumDicesComputed;

  @override
  int get getSumDices =>
      (_$getSumDicesComputed ??= Computed<int>(() => super.getSumDices,
              name: '_DiceCounterStore.getSumDices'))
          .value;

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

  late final _$dice2Atom =
      Atom(name: '_DiceCounterStore.dice2', context: context);

  @override
  int get dice2 {
    _$dice2Atom.reportRead();
    return super.dice2;
  }

  @override
  set dice2(int value) {
    _$dice2Atom.reportWrite(value, super.dice2, () {
      super.dice2 = value;
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

  late final _$progressDice2Atom =
      Atom(name: '_DiceCounterStore.progressDice2', context: context);

  @override
  bool get progressDice2 {
    _$progressDice2Atom.reportRead();
    return super.progressDice2;
  }

  @override
  set progressDice2(bool value) {
    _$progressDice2Atom.reportWrite(value, super.progressDice2, () {
      super.progressDice2 = value;
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
  void rollDice2() {
    final _$actionInfo = _$_DiceCounterStoreActionController.startAction(
        name: '_DiceCounterStore.rollDice2');
    try {
      return super.rollDice2();
    } finally {
      _$_DiceCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dice1: ${dice1},
dice2: ${dice2},
progressDice1: ${progressDice1},
progressDice2: ${progressDice2},
getDice1: ${getDice1},
getProgressDice1: ${getProgressDice1},
getDice2: ${getDice2},
getProgressDice2: ${getProgressDice2},
getSumDices: ${getSumDices}
    ''';
  }
}
