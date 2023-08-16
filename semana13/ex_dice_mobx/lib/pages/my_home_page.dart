import 'dart:math';

import 'package:ex_dice_mobx/store/dice_counter_store.dart';
import 'package:flutter/material.dart';

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
        body:  Column(
          children: [
            const Text('Lais'),
            Text('Dado 1: ${_diceCounterStere.dice1}', style: const TextStyle(fontSize: 30),
            ),
            _diceCounterStere.progressDice1 == true
                ? const CircularProgressIndicator()
                : const SizedBox(),
            ElevatedButton(
              onPressed: _rollDice1,
              child: const Text('Roll dice 1'),
            )
          ],
        )
    );
  }

  _rollDice1() {
  print('clicou');
  _diceCounterStere.rollDice1();
  }
}