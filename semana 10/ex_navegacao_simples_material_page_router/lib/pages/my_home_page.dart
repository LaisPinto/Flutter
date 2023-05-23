
import 'dart:async';

import 'package:flutter/material.dart';

import '_export_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ElevatedButton _rowElevatedButton() => ElevatedButton(
      onPressed: () => _openScreen1(),
      child: const Text('Abrir a Tela 1')
  );

  ElevatedButton _rowElevatedButton2() => ElevatedButton(
      onPressed: () => _openScreen2('Zé'),
      child: const Text('Abrir a Tela 2')
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Text('Home ${widget.title}'),
            _rowElevatedButton(),
            _rowElevatedButton2(),
          ],
        )
    );
  }

  _openScreen1() {
    Timer(
        const Duration(milliseconds: 1000), () => Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => const Screen1Page())
    )
    );
  }

  _openScreen2(String title) {
    Timer(
        const Duration(milliseconds: 1000), () => Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) =>  Screen2Page(title: title,))
    )
    );
  }
}