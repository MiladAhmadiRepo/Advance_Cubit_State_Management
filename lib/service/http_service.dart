import 'package:http/http.dart' as http;

class HttpService {
  static const baseUrl = "https://api.dictionaryapi.dev/api/v2/entries/";

  static Future<http.Response> getRequest(String endPoint) async {
    late http.Response response;
    final Uri url = Uri.parse("$baseUrl$endPoint");
    try {
      response = await http.get(url);
    } on Exception catch (e) {
      rethrow;
    }
    return response;
  }
}
