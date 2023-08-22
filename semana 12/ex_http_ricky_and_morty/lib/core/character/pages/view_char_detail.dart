import 'package:easy_localization/easy_localization.dart';
import 'package:ex_http_ricky_and_morty/core/character/model/_export_model.dart';
import 'package:ex_http_ricky_and_morty/core/character/service/_export_service.dart';
import 'package:ex_http_ricky_and_morty/core/network/_export_network.dart';
import 'package:ex_http_ricky_and_morty/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewCharDetail extends StatefulWidget {
  int id;

  ViewCharDetail({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<ViewCharDetail> createState() => _ViewCharDetailState();
}

class _ViewCharDetailState extends State<ViewCharDetail> {
  CharacterResponseModel? char;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.seeChar.tr()),
      ),
      body: Column(
        children: [
          Text('ID: = ${widget.id}'),
          char?.image == null ? const SizedBox() : Image.network(char!.image),
          Text(
            char?.name ?? "",
            style: const TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _getSigleChar();
  }

  _getSigleChar() async {
    final characterService = CharacterService(Network(http.Client()));
    char = await characterService.getCharacter(
      id: widget.id,
    );
    setState(() {});
    print('o que chegou na tela de detalhe: ${char.toString()}');
  }
}
