import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter tipos de botoes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter tipos de botoes'),
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

  double volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:   [
          const TextButton(
              onPressed: null,
              key: Key('lib_main_button_save'),
              child: Text('Disable')
          ),
          TextButton(
              onPressed: sendSimplePrint,
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Padding(
                  padding: EdgeInsets.all(20),
                child: Text('Enabled'),
              )
          ),
          TextButton.icon(
              onPressed: sendSimplePrint,
              key: const Key('lib_main_button_3'),
              icon: const Icon(Icons.add_circle),
              label: const Text('Add')
          ),
          OutlinedButton(
              onPressed:() => sendPrint('oi'),
            key: const Key('lib_main_button_4'),
              child: const Text('clicou no outlined'),
          ),
          IconButton(
              onPressed:  increaseVolume,
              icon: const Icon(Icons.volume_up),
          ),
          Text(
            "Volume: $volume",
            key: const Key('lib_main_text_1'),
          ),

            Ink(
              decoration: const ShapeDecoration(
                color: Colors.blue,
                  shape: CircleBorder()
              ),
              child: IconButton(
                icon: const Icon(Icons.android),
                color: Colors.white,
                onPressed: sendSimplePrint,
              ),
            ),
          ElevatedButton(
              onPressed: sendSimplePrint,
              key: const Key('lib_main_button_5'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: Colors.amber,
              ),
              child: const Text('Ok'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Small'),
              const SizedBox(width: 16,),
              FloatingActionButton(
                  onPressed: sendSimplePrint,
                  child: const Icon(Icons.add),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Normal'),
              const SizedBox(width: 16,),
              FloatingActionButton.large(
                  onPressed: sendSimplePrint,
                  child: const Icon(Icons.add),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('extended'),
              const SizedBox(width: 16,),
              FloatingActionButton.extended(
                  onPressed: sendSimplePrint,
                  label: const Icon(Icons.add),
              ),

            ],
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: sendSimplePrint,
      //   backgroundColor: Colors.yellow,
      //   child: const Icon(Icons.add_circle),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: sendSimplePrint,
        backgroundColor: Colors.green,
        icon: const Icon(Icons.thumb_up),
        label: const Text('Curtir'),
      ),
      
    );
  }

  increaseVolume() {
    setState(() {
     volume += 5;
    });
  }
  sendSimplePrint() => print('oi');
  sendPrint(String message) => print(message);

}
