import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; //apelido
import 'dart:convert' as convert;

class HTTPPage extends StatefulWidget {
  const HTTPPage({super.key});

  @override
  State<HTTPPage> createState() => _HTTPPageState();
}

class _HTTPPageState extends State<HTTPPage> {

  bool _progress = false;
  late String _query;
  int _itemsCount = 0;
  String _description = "";

  Widget _rowTextFormField() => TextFormField(
    keyboardType: TextInputType.text,
    onFieldSubmitted: (value) async {
      print("Valor recebido: $value");
      setState(() {
        _progress = true;
      });
      await _fetchGoogleAPIResponse(query: value);
      setState(() {
        _progress = false;
      });
    },
  );

  Widget _rowProgress() => Visibility(
    visible: _progress,
    child: const CircularProgressIndicator()
  );

  Widget _rowItemsCount() => Text("numero de livors encontrados: $_itemsCount", style: const TextStyle(fontSize: 30),);
  
  Widget _rowDescription() => Text(_description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HTTP Page"),
      ),
      body: Column(
        children: [
          _rowTextFormField(),
          _rowProgress(),
          _rowItemsCount(),
          _rowDescription()
        ],
      ),
    );
  }

  Future<bool> _fetchGoogleAPIResponse({required String query}) async {
    //await Future.delayed(const Duration(seconds: 5));
    var url = Uri.https("www.googleapis.com", "/books/v1/volumes", {'q': query});
    // request... await async... future...
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;

      var itemCount = jsonResponse['totalItems'];
      var description = jsonResponse['items'][0]['volumeInfo']['description'];
      print("Numero de livros: $itemCount");
      print(description);
      setState(() {
        _itemsCount = itemCount;
        _description = description;
      });
      return true;
    } else {
      print("Request falhou: ${response.statusCode}");
      return false;
    }

  }
}


//www.googleapis.com/books/v1/volumes?q=android