import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Widget base ......
  Widget text( String message) {
    return Text(message);
  }

  //Widgets estrutura de tela.......
  Widget rowText() {
    return text('aaaaaa');
  }
  Widget row2Text() {
    return text('bbbbbbbbb');
  }
  // Widget row3Text() {
  //   return Row(
  //     children: [
  //
  //     ],
  //   );
  // }
  Widget row3Container1() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.green,
    );
  }
  Widget row3Container2() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.yellow,
    );
  }
  Widget row4Text() {
    return text('ccccccc');
  }
  Widget row5Buttom() {
    return ElevatedButton(
        onPressed: showToast,
        child:  text('ok')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(widget.title),
      ),
      body: Column(
        children:  [
          rowText(),
          row2Text(),
          Row(
            children: [
              row3Container1(),
              row3Container2(),
            ],
          ),
          row4Text(),
          row5Buttom(),
        ],
      )
    );
  }

  @override
  void initState() {

  }

  @override
  void dispose() {

  }

  showToast() {

  }
  showMessage() {

  }
}
