import 'package:exx_future_async_await_then/page/_export_pages.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String _response = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            // Text(_getName()),
            // ElevatedButton(
            //   onPressed: () async {
            //     debugPrint(_getName()); //main thread
            //     print('não vai esperar o resultado');
            //     print(_sayHello()); //???
            //
            //     print('vai esperar o resultado');
            //     print(await _sayHello());
            //
            //    // await _waitForMe();
            //    //  print("passou pelo wait");
            //
            //     _waitForMe().then((_) => { //então
            //       print("passou no then, acabou a execução do código")
            //     });
            //
            //     _waitForMe().then((_) => { //então
            //       print("passou no then, acabou a execução do código")
            //     }).catchError((onError) {
            //       print("passou no catch, deu erro");
            //       print("error: ${onError.toString()}");
            //     });
            //   },
            //   child: const Text("Clique aqui!")
            // ),
            // Text(_response)

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const RandomPage()
                      )
                  );
                },
                child: const Text("Abrir tela Random")
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const HTTPPage()
                      )
                  );
                },
                child: const Text("Abrir tela HTTP")
            ),
          ],
        )
    );
  }

  //sincrono -> main thread
  String _getName() => 'Lais Pinto';

  //asincrono
  Future<String> _sayHello() async {
    var name = "Hello";
    return name;
  }

  //asincrono
  Future _waitForMe() async {
    print('iniciou');

    return Future.delayed(const Duration(seconds: 5), () {
      print('finalizou');
      setState(() {
        _response = "Novo conteudo!!";
        throw Exception("aaaaa");
      });
    });
  }

}