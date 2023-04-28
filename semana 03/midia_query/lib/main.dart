import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Media Query',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Media Query'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {// NÃO PODE SER ESQUECIDO JAMAIS ! IMPORTANTE

    final _width = MediaQuery.of(context).size.width;// LARGURA DA TELA
    final _height = MediaQuery.of(context).size.height;// ALTURA DA TELA

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(
            child: Container(
            width: double.maxFinite,
            height: (_height * 44) / 100,//70% do tamanho da altura da tela
            color: Colors.orange,
            ),
          ),
          Container(
            //width: (_width * 25) / 100,//50% do tamanho da largura da tela
            height: (_height * 44) / 100,//70% do tamanho da altura da tela
            color: Colors.orangeAccent,
            ),


          ElevatedButton(
              onPressed: () {
                print('clicou');
                print('largura da tela: $_width');
                print('altura da tela: $_height');
              },
              child: const Text('ok')
          )
        ],
      )
    );
  }
}
