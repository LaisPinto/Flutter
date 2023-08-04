import 'dart:math';

import 'package:flutter/material.dart';

class RandomPage extends StatefulWidget {
  const RandomPage({super.key});

  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {

  int _randomNumber = 0;
  int _count = 0;
  bool _progress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Page"),
      ),
      body: Column(
        children: [
          // Text("Numero randomico: $_randomNumber"),
          // ElevatedButton(
          //   onPressed: () async {
          //     setState(() {
          //       _progress = true;
          //     });
          //
          //     _randomNumber = await _generateRandomNumber();
          //
          //     setState(() {
          //       _progress = false;
          //     });
          //   },
          //   child: const Text("Numero random")
          // ),
          //outro
          ElevatedButton(
              onPressed: () async {
                await for(int i in _countForOneMinute()) {
                  setState(() {
                    print(i);
                    _count = i;
                  });
                }
              },
              child: const Text("Numero stremado")
          ),
          Text("Contador: $_count"),
          // StreamBuilder(
          //   stream: _countForOneMinute(),
          //   builder: (context, snapshot) {
          //     if(!snapshot.hasData) {
          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if(snapshot.hasError) {
          //       return const Center(
          //         child: Text("Erro!"),
          //       );
          //     }
          //     return Text("Contador: ${snapshot.data}");
          //   }
          // ),
          Visibility(
            visible: _progress,
            child: const CircularProgressIndicator(),
          )
        ],
      ),
    );
  }

  //async -> basicamente prover um future
  //utilizamos async sempre que precisarmos retornar um valor de forma assincrona
  Future<int> _generateRandomNumber() async {
    var random = Random();
    await Future.delayed(const Duration(seconds: 3));
    return random.nextInt(6);
  }


  // async*
  // adicionamos o * quando precisamos stremar um resultado... ou seja,
  // precisamos que fique enviando o resultado a todo momento para a tela.
  // tipo de retorno seja um -> Stream
  Stream<int> _countForOneMinute() async* {
    for (int i = 0 ; i < 60 ; i ++) {
      await Future.delayed(const Duration(seconds: 3));
      yield i;
    }
  }
}
