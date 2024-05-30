import 'package:get/get.dart';
import 'package:soccer/app/data/models/highlight.dart';
import 'package:soccer/app/data/providers/provider.dart';
import 'package:soccer/app/data/url/urlAPI.dart';

class HighlightController extends GetxController {
  var highlights = List<Highlight>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    getHighlights();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getHighlights() {
    MatchProvider().getHighlights().then((value) {
      for (int i = 0; i < value.length; i++) {
        var id = value[i]["id"];
        var title = value[i]["title"];
        var description = value[i]["description"];
        var thumbnail =
            UrlAPI.url + "/storage/videos/thumbnails/" + value[i]["thumbnail"];
        var url = value[i]["url"];
        highlights.add(Highlight(
          id: id,
          title: title,
          description: description,
          thumbnail: thumbnail,
          url: url,
        ));
      }
    });
  }
}
