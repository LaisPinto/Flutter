import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter container padding box',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter container padding box'),
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

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.amber,
                child: const Padding(padding: EdgeInsets.all(10),
                child: Text('aaaaaa', style: TextStyle(fontSize: 40),),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.black,
                width: screenWidth,
                child: const Center(
                  child: Text('Titulo', style: TextStyle(fontSize:30, color: Colors.white),),
                ),
              )
            ],
          ),
         const SizedBox(height: 10,
          ),
          Row(
            children: [
              Container(
                color: Colors.green,
                child: const Text('A', style: TextStyle(fontSize: 30),),
              ),
              const SizedBox(width: 10,
              ),
              Container(
                color: Colors.red,
                child: const Text('C', style: TextStyle(fontSize: 30),),
              ),
            ],
          ),
        const SizedBox(height: 10,
        ),
          Row(
            children: [
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 200,
                  minWidth: 100,
                  maxHeight: 100,
                  minHeight: 50,
                ),
                color: Colors.yellow,
                child: const Text('BGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGSSSSSSSSSSSS', style: TextStyle(fontSize: 30),),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                color: Colors.grey,
                child: Row(
                  children: [
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/PNG_transparency_demonstration_1.png/420px-PNG_transparency_demonstration_1.png',
                      width: 100, height: 100,),
                    Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/PNG_transparency_demonstration_1.png/420px-PNG_transparency_demonstration_1.png',
                      width: 100, height: 100,),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: 300,
            height: 300,
            decoration:  BoxDecoration(
              image: const DecorationImage(image: (NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/PNG_transparency_demonstration_1.png/420px-PNG_transparency_demonstration_1.png')),
              fit: BoxFit.cover
              ),
              border: Border.all(
                color: Colors.green,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const[
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(10, 10),
                  blurRadius: 10,
                  spreadRadius: 2.0,
                )
              ]
            ),
          )
        ],
      )
    );
  }
}
