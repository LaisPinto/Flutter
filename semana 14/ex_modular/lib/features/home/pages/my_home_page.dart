import 'package:ex_modular/features/home/_export_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
      body: Column(
        children: [
          ElevatedButton(
              onPressed: _launchScreen1,
              child: const Text('go to tela 1'),
          ),
          ElevatedButton(
              onPressed: _launchScreen2,
              child: const Text('go to tela 2'),
          ),
          ElevatedButton(
              onPressed: _launchScreen3,
              child: const Text('go to unknown route'),
          ),
        ],
      )
    );
  }

  _launchScreen1() => Modular.to.pushNamed('/screen1');
  _launchScreen2() =>
      Modular.to.pushNamed('/screen2', arguments: Person(name: 'Lais'));
  _launchScreen3() =>
      Modular.to.pushNamed('/screen2aushauhs');
}