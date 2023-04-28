import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//stl = Stateless
//stf = Stateful
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout'),
        ),
        body: Column(
          children: const [
            Center(
              child: Text(
                'Lais Pinto',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black
                ),
              ),
            ),
            Center(
              child: Text(
                'Lais',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Row() Column() -> children = filhos [] child = filho