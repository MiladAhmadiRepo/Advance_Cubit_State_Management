import 'dart:convert';
import 'dart:io';


import '../model/word_response.dart';
import '../service/http_service.dart';


class WordRepository {

  Future<List<WordResponse>> getWordsFromDictionary(String query) async {
    try {
      final response = await HttpService.getRequest("en_US/$query");

      if (response.statusCode == 200) {
        List< dynamic> wordResponseMap = jsonDecode(response.body);
        return wordResponseMap.map((json) {
            return WordResponse.fromJson(json);
        },).toList();

      } else {
        return [];
      }
    } on SocketException catch (e) {
      throw e;
    } on HttpException catch (e) {
      throw e;
    } on FormatException catch (e) {
      throw e;
    }
  }
}