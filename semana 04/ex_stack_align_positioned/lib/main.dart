import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter stack align positioned',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter stack align positioned'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            width: 110,
            height: 110,
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 90,
            height: 90,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              width: 80,
              height: 80,
              child: const Text('A', style: TextStyle(fontSize: 40),),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: const EdgeInsets.all(20.8),
              alignment: Alignment.center,
              color: Colors.amber,
              width: 80,
              height: 80,
              child: const Text('B', style: TextStyle(fontSize: 40),),
            ),
          ),
          Positioned(
              top: 20,
              right: 20,
              child: Container(
                color: Colors.blue,
                width: 90,
                height: 90,
              )
          ),
          Positioned(
            bottom: 20,
              left: 20,
              child: Container(
                color: Colors.blue,
                width: 90,
                height: 90,
              )
          ),

          // Image.network(
          //     'https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png'
          // ),
          // FadeInImage.assetNetwork(
          //   placeholder: 'assets/loading.gif',
          //   image: 'https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png',
          // ),
          // const Positioned(
          //   left: 20,
          //   top: 20,
          //   child: Text(
          //     'Dadinhos', style: TextStyle(fontWeight: FontWeight.bold),
          //   ),
          // )
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Dadinhos', style: TextStyle(fontWeight: FontWeight.bold),
            ),
           )
        ]
      )
    );
  }
}
