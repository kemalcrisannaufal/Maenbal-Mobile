import 'package:get/get.dart';

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
    final response =
        await get("https://cbde-103-233-100-229.ngrok-free.app/api/news");
    return response.body;
  }
}
