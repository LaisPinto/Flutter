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
  "hello": "Hello",
  "screens": {
    "home": {
      "title": {
        "message": "Seja bem vindo"
      }
    }
  },
  "message": "{} are written in language {} language",
  "message_named": "Easy localization was written in {language} language",
  "message_mixed": "{} are written in language {language}",
  "example": {
    "hello": "Hello",
    "world": "World!",
    "helloWorld": "@:example.hello @:example.world"
  }
};
static const Map<String,dynamic> pt_BR = {
  "hello": "Ola",
  "screens": {
    "home": {
      "title": {
        "message": "Seja bem vindo"
      }
    }
  },
  "message": "{} foi escrito em linguagem {}",
  "message_named": "Easy localization foi escrito em linguagem {language}",
  "message_mixed": "{} foi escrito em linguagem {language}",
  "example": {
    "hello": "Ola",
    "world": "Mundo!",
    "helloWorld": "@:example.ola @:example.mundo"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US, "pt_BR": pt_BR};
}
