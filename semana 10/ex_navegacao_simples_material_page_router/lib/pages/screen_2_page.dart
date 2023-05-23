import 'package:flutter/material.dart';

class Screen2Page extends StatefulWidget {
  const Screen2Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen2Page> createState() => _Screen2PageState();
}

class _Screen2PageState extends State<Screen2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title:  Text(widget.title),
      ),
      body: Column(
        children:  [
           Text('Bem vindo(a) ${widget.title} a tela 2', style: const TextStyle(fontSize: 30),),
          Text(widget.title, style: const TextStyle(fontSize: 30),),
          ElevatedButton(
              onPressed: () => _backToHome,
              child: const Text('Volta para home')
          )
        ],
      ),
    );
  }

  _backToHome() => Navigator.pop(context); //retirar a tela da pilha, ou seja, voltar para a tela anterior
}
