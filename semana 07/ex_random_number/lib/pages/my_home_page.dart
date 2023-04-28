import 'package:flutter/material.dart';
import '../model/number.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? randomNumber;

  Widget _showTextLotteryNumber() => const Text('Numero da loteria',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 50.0),);

  Widget _showTextRandomNumber() => Text(
    randomNumber != null ? '$randomNumber' : 'Click no botão',
    style: const TextStyle(
        fontSize: 50.0,
        backgroundColor: Colors.deepOrange,
        color: Colors.white),);

  Widget _fab() =>
      FloatingActionButton(
        onPressed: _sendNewNumber,
        tooltip: 'Random number',
        key: const Key('const_float_button'),
        child: const Icon(Icons.add),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            _showTextLotteryNumber(),
            _showTextRandomNumber(),
          ],
        ),
      floatingActionButton: _fab(),
    );
  }
  @override
  void initState() {
    super.initState();
    debugPrint('initState');
    // randomNumber = _generateRandomNumber();
  }
  @override
  void dispose() {
    super.dispose();
    debugPrint('dispose');
  }
  int _generateRandomNumber() {
    return Number.generateRandomNumber();
  }
  _sendNewNumber() {
    setState(() {
      randomNumber = _generateRandomNumber();
      _sendSnackBar();
    });
  }
  _sendSnackBar() {
    final snackBar = SnackBar(content: Text('Novo numero: $randomNumber'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}