import 'package:ex_http_ricky_and_morty/constant.dart';
import 'package:ex_http_ricky_and_morty/core/character/interface/_export_interface.dart';
import 'package:ex_http_ricky_and_morty/core/character/model/character_response_model.dart';
import 'package:ex_http_ricky_and_morty/core/character/model_header/_export_model_header.dart';

import '../../network/_export_network.dart';

class CharacterService extends CharacterServiseInterface {
  final Network httpNetwork;

  CharacterService(this.httpNetwork);

  @override
  Future<List<CharacterResponseModel>>? getAllCharacters() async {
    try {
      final response = await httpNetwork.get(
        url: '${Constant.baseUrl}${Constant.characterEndpoint}',
        headers: CharacterHeader.getCharectersHeaders(),
      );

      print('response: $response');
      print('response: ${response['results']}');

      List<CharacterResponseModel> characters = response['results']
          .map<CharacterResponseModel>(
              (char) => CharacterResponseModel.fromMap(char))
          .toList() as List<CharacterResponseModel>;

      print('Lista convertida: ${characters.toString()}');
      return characters;
    } catch (e) {
      print('error: $e');
      rethrow;
    }
  }

  @override
  Future<CharacterResponseModel>? getCharacter({required int id}) async {
    try {
      final response = await httpNetwork.get(
        url: '${Constant.baseUrl}${Constant.characterEndpoint}$id',
        headers: CharacterHeader.getCharectersHeaders(),
      );

      print('response: $response');
      return CharacterResponseModel.fromMap(response);
    } catch (e) {
      print('error: $e');
      rethrow;
    }
  }
}
