import 'package:get/get.dart';
import 'package:soccer/app/data/models/news.dart';
import 'package:soccer/app/data/providers/provider.dart';
import 'package:soccer/app/data/url/urlAPI.dart';

class NewsDetailController extends GetxController {
  var news = News(id: 0, title: "", content: "", thumbnail: "").obs;
  @override
  void onInit() {
    super.onInit();
    getNewsById(Get.arguments);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getNewsById(int id) {
    MatchProvider().getNewsDetail(id).then((value) {
      var title = value["title"];
      var content = value["content"];
      var thumbnail = UrlAPI.url + "/storage/thumbnails/" + value["thumbnail"];
      News data =
          News(id: id, title: title, content: content, thumbnail: thumbnail);

      news.value = data;
    });
  }
}
