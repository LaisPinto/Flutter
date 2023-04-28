import 'package:ex_random_number/model/export_number.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? randomNumber;

  Widget _rowText( ) {
    return const Text(
      'numero da loteria',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 50.0),
    );
  }
  Widget _rowText2( ) {
    return  Text(
      randomNumber != null ? '$randomNumber' : 'clique no botão',
      style: const TextStyle(fontSize: 50.0,
          backgroundColor: Colors.deepOrange,
          color: Colors.white
      ),
    );
  }
  Widget fab() {
    return FloatingActionButton(
      onPressed: _sendNewNumber,
      tooltip: 'Random number',
      key: const Key('button_send_new_number'),
      child: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:

      Column(
        children: [
          _rowText(),
          _rowText2()
        ],
      ),
      floatingActionButton: fab(),
    );
  }
  @override
  void initState() {
    print('initState');
    //randomNumber = _generateNumber();
  }

  @override
  void dispose() {
    print('dispose');
  }

  //regra de negocio
  int _generateNumber() {
    return Number.generateRandomNumber();
  }

  _sendNewNumber() {
    setState(() {
      randomNumber = _generateNumber();
      print('novo numero');
      print(randomNumber);
    });
  }

  _sendSnackBar() {
    final snackBar = SnackBar(content: Text('novo numero $randomNumber'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
