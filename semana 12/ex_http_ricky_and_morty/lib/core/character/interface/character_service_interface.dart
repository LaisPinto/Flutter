import 'package:ex_http_ricky_and_morty/core/character/model/_export_model.dart';

abstract class CharacterServiseInterface {
  Future<List<CharacterResponseModel>>? getAllCharacters();
  Future<CharacterResponseModel>? getCharacter({required int id});
}
