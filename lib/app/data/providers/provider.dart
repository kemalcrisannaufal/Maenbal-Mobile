import 'package:get/get.dart';
import 'package:soccer/app/data/url/urlAPI.dart';

class MatchProvider extends GetConnect {
  Future<Map<String, dynamic>> getMatches() async {
    final response = await get(
        'https://livescore-api.com/api-client/fixtures/matches.json?key=e6l0EOXMmvzA4Ckl&secret=SGWyI0VUktY9AeLPl6QZVOMijmSnYcJR&competition_id=244');
    return response.body;
  }

  Future<Map<String, dynamic>> getHistory(String from) async {
    final response = await get(
        "https://livescore-api.com/api-client/scores/history.json?key=e6l0EOXMmvzA4Ckl&secret=SGWyI0VUktY9AeLPl6QZVOMijmSnYcJR&competition_id=244&from=" +
            from);
    return response.body;
  }

  Future<List<dynamic>> getNews() async {
    final response = await get(UrlAPI.url + "/api/news");
    return response.body;
  }

  Future<Map<String, dynamic>> getNewsDetail(int id) async {
    final response = await get(UrlAPI.url + "/api/news/" + id.toString());
    return response.body;
  }

  Future<dynamic> login(String email, String password) async {
    final url = UrlAPI.url + "/api/login";

    final response = await post(url, {
      'email': email,
      'password': password,
    });
    return response.body;
  }

  Future<List<dynamic>> getHighlights() async {
    final response = await get(UrlAPI.url + "/api/highlights");
    return response.body;
  }
}
