import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String htmlCompleted =
  '''
    <html>
    <head>
      <title>Opa</title>
    </head>
    <body>
      <h1 class='header1'>Header 1</h1>
    </body>
    </html>
  ''';

  String htmlScript =
  '''
    <div>
      <div style="text-align: justify;">
        <script>alert("oi");</script>
        <p>Olá Este é um html <br/>bem legal.
        <span>,feitoooooooo!</span>
        </p>
      </div>
    </div>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children:  [
            Text(_removeHtmlWithRegExp(htmlCompleted), style: const TextStyle(fontSize: 30),),
            Text(_removeHtmlJSWithRegExp(htmlScript), style: const TextStyle(fontSize: 30),)
          ],
        )
    );
  }

  String _removeHtmlWithRegExp(String html) {
    //sanitização..... remover tag html deixando somente o conteúdo
    RegExp expression = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return html.replaceAll(expression, '');
  }
  String _removeHtmlJSWithRegExp(String html) {
    //sanitização..... remover tag html e script deixando somente o conteúdo
    RegExp expression = RegExp(r"<[^>]*>|&[^;]", multiLine: true, caseSensitive: true);
    return html.replaceAll(expression, '');
  }
}