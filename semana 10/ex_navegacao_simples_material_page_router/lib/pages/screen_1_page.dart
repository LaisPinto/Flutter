import 'package:flutter/material.dart';

class Screen1Page extends StatefulWidget {
  const Screen1Page({Key? key}) : super(key: key);

  @override
  State<Screen1Page> createState() => _Screen1PageState();
}

class _Screen1PageState extends State<Screen1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Tela 1'),
      ),
      body: Column(
        children:  [
          const Text('Bem vindo(a) a tela 1'),
          ElevatedButton(
              onPressed: () => _backToHome(),
              child: const Text('Volta para home')
          )
        ],
      ),
    );
  }

  _backToHome() => Navigator.pop(context); //retirar a tela da pilha, ou seja, voltar para a tela anterior
}
