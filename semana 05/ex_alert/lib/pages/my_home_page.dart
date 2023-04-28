import 'package:asuka/asuka.dart';
import 'package:asuka/snackbars/asuka_snack_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget text(String message) {
    return Text(message);
  }
  // Widget button() {
  //   return ElevatedButton(
  //       onPressed: () {
  //         print('ola');
  //         Navigator.of(context).pop();//spoiler
  //       },
  //       child: text('ok')
  //   );
  // }
  //configurando o botão do alert
  // Widget okButton() {
  //   return ElevatedButton(
  //       onPressed: () {
  //         print('ola2');
  //       },
  //       child: text('clicou')
  //   );
  // }
  // Widget cancelButton() {
  //   return ElevatedButton(
  //       onPressed: () {
  //         print('cancelou');
  //         Navigator.of(context).pop();
  //       },
  //       child: text('cancel')
  //   );
  // }
  // Widget alert() {
  //   return AlertDialog(
  //     title: text('atenção'),
  //     content: text('Você esta vendo esta mensagem'),
  //     actions: [
  //       okButton(),
  //       cancelButton()
  //     ],
  //   );
  // }
  //  showAlert() {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return alert();
  //       }
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text(widget.title),
      ),
      body: Column(
        children: [
          ElevatedButton(
          onPressed: () => _sendAsukaAlert(),
            child: text('ok')
          )
        ],
      )
    );
  }
  _sendAsukaAlert() {
    //AsukaSnackbar.alert("Alerta").show();
    //AsukaSnackbar.info("atenção").show();
    //AsukaSnackbar.success("deu bom").show();
    //AsukaSnackbar.warning("te liga").show();
    Asuka.showDialog(
      builder: (context) => AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.ac_unit),
            Text('titulo')
          ],
        ),
        content: const Text('Este é o conteudo'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
