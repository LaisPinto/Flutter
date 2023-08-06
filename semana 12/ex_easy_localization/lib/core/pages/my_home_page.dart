import 'package:flutter/material.dart';

//passo 1: colocar a lib
//passo 2: criar estrutura de assets
//passo 3: liberar assets yaml
//passo 4: main
//passo 5: material app
//passo 6: testar

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:  Column(
          children: [
            //Text(),
            const Text('lais')
          ],
        )
    );
  }
}