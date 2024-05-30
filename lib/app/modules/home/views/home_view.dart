import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soccer/app/modules/home/views/history_match_card_view.dart';
import 'package:soccer/app/modules/home/views/news_card_view.dart';
import 'package:soccer/app/modules/home/views/next_match_card_view.dart';
import 'package:soccer/app/routes/app_pages.dart';
import 'package:soccer/app/shared/widgets/appbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Soccer Info',
        subtitle: 'UEFA Champions League',
        imagePath: 'assets/images/mbappe.png',
      ),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/grafis.png",
          ),
          Title("Next Match"),
          NextMatchCardView(),
          Title("News"),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Container(
              height: 150,
              child: Obx(() => ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.listNews.length,
                  itemBuilder: (context, index) {
                    return NewsCardView(
                        title: controller.listNews[index].title,
                        thumbnail: controller.listNews[index].thumbnail,
                        onTap: () {
                          Get.toNamed(
                            Routes.NEWS_DETAIL,
                            arguments: controller.listNews[index].id,
                          );
                        });
                  })),
            ),
          ),
          Title("Last Match"),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Obx(
              () => Container(
                height: controller.listHistory.length * 80,
                child: ListView.builder(
                    itemCount: controller.listHistory.length,
                    itemBuilder: (context, index) {
                      return HistoryMatchCardView(
                        homeName: controller.listHistory[index].homeName,
                        awayName: controller.listHistory[index].awayName,
                        score: controller.listHistory[index].score,
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.blue[700],
          onTap: (index) {
            if (index == 0) {
              Get.toNamed(Routes.HOME);
            } else if (index == 1) {
              Get.toNamed(Routes.HIGHLIGHT);
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: 'Highlight',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
          ]),
    );
  }

  Padding Title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
