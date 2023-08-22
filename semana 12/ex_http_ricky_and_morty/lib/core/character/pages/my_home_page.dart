import 'package:easy_localization/easy_localization.dart';
import 'package:ex_http_ricky_and_morty/core/character/service/charecter_service.dart';
import 'package:ex_http_ricky_and_morty/core/network/_export_network.dart';
import 'package:ex_http_ricky_and_morty/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '_export_pages.dart';
import '../model/_export_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //global
  //var results = [];
  late List<CharacterResponseModel> _characteres = [];
  bool _progress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _characteres.length,
              itemBuilder: (context, indext) {
                if (_characteres.isEmpty) {
                  return Text(LocaleKeys.noInformationClickTheButton.tr());
                }
                return ListTile(
                  //leading: Image.network(_characteres[indext]['image']),
                  leading: Image.network(_characteres.elementAt(indext).image),
                  trailing: TextButton(
                    child: Text(LocaleKeys.characterDetails.tr()),
                    onPressed: () =>
                        _getSingleChar(id: _characteres.elementAt(indext).id),
                  ),
                  //title: Text(_characteres[indext]['name']),
                  title: Text(_characteres.elementAt(indext).name),
                );
              },
            ),
          ),
          _progress ? const CircularProgressIndicator() : const SizedBox(),
          OutlinedButton(
            onPressed: () => _getAllCharactersV2(),
            child: Text(LocaleKeys.searchCharacters.tr()),
          )
        ],
      ),
    );
  }

  _getSingleChar({required int id}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ViewCharDetail(
          id: id,
        ),
      ),
    );
  }

  _getAllCharactersV2() async {
    final characterService = CharacterService(Network(http.Client()));

    _progress = true;
    _characteres = (await characterService.getAllCharacters())!;
    setState(() {});
    _progress = false;
    print('o que chegou: ${_characteres.toString()}');
  }

  // _getAllCharacters() async {
  //   print("clicou");
  //https://rickandmortyapi.com/api
  // String baseUrl = 'rickandmortyapi.com';
  // String endpoint = '/api/character';
  // var url = Uri.https(baseUrl, endpoint);
  // var responde = await http.get(url);
  // if (responde.statusCode == 200) {
  //   var jsonResponse =
  //       convert.jsonDecode(responde.body) as Map<String, dynamic>;
  //   print('retorno: $jsonResponse');
  //   var result = jsonResponse['results'];
  //   setState(() {});
  //   print('results:  $result');
  //   print('results[0]:  ${result[0]}');
  //   print('results[0] image:  ${result[0]['image']}');
  // } else {
  //   print('Resquest failed with status : ${responde.statusCode}');
  // }
  //}
}
