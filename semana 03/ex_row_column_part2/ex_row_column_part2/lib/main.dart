import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttler layout row/column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout row/column'),
        ),
        body: Column(
          children: [
            const Icon(Icons.home),
            Row(
              children: const [
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
              ],
            ),
            const Icon(Icons.home),
            Row(
              children: const [
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
                Icon(Icons.ac_unit),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.yellow,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
                Container(
                  color: Colors.deepOrange,
                  width: 50,
                  height: 50,
                )
              ],
            )
          ],
        )
      ),
    );
  }
}

//Row / Column -> estrutura de tela
//ambos com exatamente as mesmas propriedades
//children = filhos [???] child = filho unico
//Row -> eixo principal -> horizontal MainAxis
//Row -> eixo secundario (transversal) -> CrossAxis
//Column -> eixo principal -> vertical MainAxis
//Column -> eixo segundario -> vertical CrossAxis