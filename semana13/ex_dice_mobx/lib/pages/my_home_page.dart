import 'dart:math';

import 'package:ex_dice_mobx/store/dice_counter_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _diceCounterStere = DiceCounterStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            const Text('Lais'),
            Observer(
              builder: (BuildContext context) => Text(
                'Dado 1: ${_diceCounterStere.getProgressDice1}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Observer(
              builder: (BuildContext context) =>
                  _diceCounterStere.progressDice1 == true
                      ? const CircularProgressIndicator()
                      : const SizedBox(),
            ),
            Observer(
              builder: (BuildContext context) => Text(
                'Dado 2: ${_diceCounterStere.getProgressDice2}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Observer(
              builder: (BuildContext context) =>
                  _diceCounterStere.progressDice2 == true
                      ? const CircularProgressIndicator()
                      : const SizedBox(),
            ),
            Observer(
              builder: (BuildContext context) => Text(
                '${_diceCounterStere.getSumDices}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: _rollDice1,
              child: const Text('Roll dice 1'),
            ),
            ElevatedButton(
              onPressed: _rollDice2,
              child: const Text('Roll dice 2'),
            )
          ],
        ));
  }

  _rollDice1() => _diceCounterStere.rollDice1();
  _rollDice2() => _diceCounterStere.rollDice2();
}
