import 'package:ex_componentizacao/core/component/_export_component.dart';
import 'package:ex_componentizacao/core/component/text_component.dart';
import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Componentização',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true
      ),
      home: const MyHomePage(title: 'Flutter Componentização'),
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

  //atributos

  //widget - padronização, porem temos componentização

  Widget _rowText1() =>  const TextComponent(
    title: "lais", fontSize: 30.0,
  );
  Widget _rowText2() =>  const TextComponent(
    title: "pinto", fontSize: 18.0,textAlign: TextAlign.center,
  );

  Widget _rowText3() =>  const TextNewComponent(
    data: "Lais Pinto",
  );

  ElevatedButtonComponent _rowButton() => ElevatedButtonComponent(
      onPressed: _showPrint,
      title: "Clique aqui"
  );//intermediario

  GestoreDetectorComponent _rowgestoreDetector() =>
     GestoreDetectorComponent(
      onTap: () {
        debugPrint("clicou no componente......");
      },
      child: const TextNewComponent(data: "clique aqui",),
    );

  TextClickComponent _rowTextClick() => TextClickComponent(
      onTap: () {
        debugPrint("uolllll text com click");
      },
      child: const TextNewComponent(data: "só clicar")
  );

  LinearProgessIndicatorComponent _rowProgress() =>
      const LinearProgessIndicatorComponent(
      progressPercentage: 10.0
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            _rowText1(),
            _rowText2(),
            _rowText3(),
            _rowButton(),
            _rowgestoreDetector(),
            _rowTextClick(),
            _rowProgress(),
          ],
        )
    );
  }

//metodos variados

  _showPrint() => debugPrint("clicouuuuu");
}



