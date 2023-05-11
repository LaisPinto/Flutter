import 'dart:convert';
import 'package:flutter/material.dart';
import '../model/_export_models.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late _animalList<Map<String, dynamic>> _value;

  // List<dynamic> _animalList = [];
  //
  // Column _columnList() {
  //   return Column(
  //     children: [
  //       Expanded(
  //           child: ListView.builder(
  //               itemCount: _animalList.length,
  //               itemBuilder: (BuildContext context, int index) {
  //                 return ListTile(
  //                     leading: CircleAvatar(
  //                       backgroundImage: NetworkImage(
  //                           _animalList[index]['image']),
  //                     ),
  //                     title: Text(_animalList[index]['name'])
  //                 );
  //               }
  //           )
  //       )
  //     ],
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _columnList()
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAnimals();
  }

  void _loadAnimals() =>
      setState(() => _animalList = jsonDecode(AnimalNames.getNames()));

}