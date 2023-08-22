import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  http.Client httpClient;

  Network(this.httpClient);

  final JsonDecoder _decode = const JsonDecoder();
  int timeout = 90;

  //CRUD
  //GET
  Future<dynamic> get({
    required String url,
    Map<String, String>? headers,
  }) async {
    final response =
        await httpClient.get(Uri.parse(url), headers: headers).timeout(
              Duration(seconds: timeout),
            );
    switch (response.statusCode) {
      case 200:
        return _decode.convert(response.body);
      default:
        return null;
    }
  }
  //POST
  //PUT
  //DELETE
  //DELETE
}
