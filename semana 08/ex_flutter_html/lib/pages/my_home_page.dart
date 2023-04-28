import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String html =
      '''
      <!DOCTYPE html>
      <html>
        <body>
          <h1>Header 1</h1>
          <h2>Header 2</h2>
          <h3>Header 3</h3>
          <h4>Header 4</h4>
          <h5>Header 5</h5>
          <h6>Header 6</h6>
          <h3>Ruby Support:</h3>
          <p>
            <ruby>
              漢<rt>かん</rt>
              字<rt>じ</rt>
            </ruby>
            &nbsp;is Japanese Kanji.
          </p>
          <img alt='Google' src='https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png' />
          <iframe src="https://www.homehost.com.br" width="400"></iframe>
        </body>
      </html>
      ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children:  [
              Html(
               data: html,
                onImageTap: (src, _, __, ___) {
                  debugPrint("clicou");
                  debugPrint(src);
                },
              )
            ],
          ),
        )
    );
  }
}