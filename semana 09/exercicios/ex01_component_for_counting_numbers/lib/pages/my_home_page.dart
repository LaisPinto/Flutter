import 'package:flutter/material.dart';

import '_export_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  SafeArea _rowSafeArea() => SafeArea(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const MyCustomWidget(),
          MyCustomCounter(onIncrement: (value) {
            debugPrint('Contador é incrementado\nValor incrementado: $value');
          },
              onDecrement: (value) {
                print('Counter is decremented\nDecremented value: $value');
              },
          )
        ]
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _rowSafeArea()
    );
  }
}

