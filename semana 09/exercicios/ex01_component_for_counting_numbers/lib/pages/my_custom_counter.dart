import 'package:flutter/material.dart';


typedef MyIntCallback(int);
class MyCustomCounter extends StatefulWidget {

  final MyIntCallback onIncrement;
  final MyIntCallback onDecrement;

  const MyCustomCounter({
    Key? key,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  State<MyCustomCounter> createState() => _MyCustomCounterState();
}

class _MyCustomCounterState extends State<MyCustomCounter> {

  int _counter = 0;

  Row _rowRow() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _rowIconButton(),
      Text(_counter.toString()),
      _rowIconButton2()
    ],
  );

  IconButton _rowIconButton() => IconButton(
      icon: const Icon(Icons.remove_circle),
      onPressed: () {
        setState(() {
          _counter--;
        });
        widget.onDecrement(_counter);
      }
  );

  IconButton _rowIconButton2() => IconButton(
    icon: const Icon(Icons. add_circle ),
    onPressed: () {
      setState(() {
        _counter++;
      });
      widget.onIncrement(_counter);
    },
  );

  @override
  Widget build(BuildContext context) {
    return _rowRow();
  }
}
