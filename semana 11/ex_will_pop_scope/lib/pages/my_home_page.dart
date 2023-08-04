import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPopScope,
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: const Text('ola', style: TextStyle(fontSize: 30),)
      ),
    );
  }

   Future<bool> _onWillPopScope() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("opa!"),
        content: const Text("Você deseja sair do App?"),
        actions: [
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(false),
            icon: const Text("Não"),
            label: const Icon(Icons.dnd_forwardslash, color: Colors.black,),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(true),
            icon: const Text("Sim"),
            label: const Icon(Icons.check, color: Colors.black,),
          ),
        ],
      )
    )) ?? false ;
   }

}