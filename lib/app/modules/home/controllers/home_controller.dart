import 'package:get/get.dart';
import 'package:soccer/app/data/models/match_history.dart';
import 'package:soccer/app/data/models/news.dart';
import 'package:soccer/app/data/providers/provider.dart';
import 'package:soccer/app/data/url/urlAPI.dart';

class HomeController extends GetxController {
  var homeTeam = "".obs;
  var awayTeam = "".obs;
  var location = "".obs;
  var time = "".obs;
  var listHistory = List<MatchHistory>.empty().obs;
  var listNews = List<News>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    getData();
    getHistoryData();
    getNewsData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getData() {
    MatchProvider().getMatches().then((value) {
      homeTeam.value = value['data']['fixtures'][0]['home_name'];
      awayTeam.value = value['data']['fixtures'][0]['away_name'];
      location.value = value['data']['fixtures'][0]['location'];
      time.value = value['data']['fixtures'][0]['date'];
    });
  }

  void getHistoryData() {
    MatchProvider().getHistory("2024-04-20").then((value) {
      print(value['data']['match'].length);
      for (int i = 0; i < value['data']['match'].length; i++) {
        var homeName = value['data']['match'][i]['home_name'];
        var awayName = value['data']['match'][i]['away_name'];
        var score = value['data']['match'][i]['score'];
        listHistory.add(
            MatchHistory(homeName: homeName, awayName: awayName, score: score));
      }
    });
  }

  void getNewsData() {
    MatchProvider().getNews().then((value) {
      for (int i = 0; i < value.length; i++) {
        var id = value[i]["id"];
        var title = value[i]["title"];
        var content = value[i]["content"];
        var thumbnail =
            UrlAPI.url + "/storage/thumbnails/" + value[i]["thumbnail"];
        listNews.add(News(
          id: id,
          title: title,
          content: content,
          thumbnail: thumbnail,
        ));
      }
    });
  }
}
