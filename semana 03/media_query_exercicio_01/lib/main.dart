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
  Widget build(BuildContext context) {

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;



    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
              child: Container(

                width: (_width * 50) / 100,
                height: (_height * 30) / 100,
                color: _width < _height ? Colors.orange : Colors.blue,
                child: const Center(
                  child: Text('Hi'),
                ),
              ),
            ),
            Container(

              width: (_width * 50) / 100,
              height: (_height * 30) / 100,
              color: _width < _height ? Colors.orangeAccent : Colors.cyanAccent,
              child: const Center(
                child: Text('Hi'),
              ),
            ),


          ],
        )
    );
  }
}
