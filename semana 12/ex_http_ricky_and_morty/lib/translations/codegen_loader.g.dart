// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "seeChar": "See Char",
  "searchCharacters": "Search for Characters",
  "characterDetails": "Character Details",
  "noInformationClickTheButton": "No information, click the button"
};
static const Map<String,dynamic> pt_BR = {
  "seeChar": "Ver Personagem",
  "searchCharacters": "Buscar personagens",
  "characterDetails": "Detalhes do Personagem",
  "noInformationClickTheButton": "Sem informações, clique no botão"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "pt_BR": pt_BR};
}
