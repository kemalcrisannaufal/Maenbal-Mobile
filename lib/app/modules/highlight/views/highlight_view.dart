import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:soccer/app/modules/highlight/views/higlight_card_view.dart';
import 'package:soccer/app/routes/app_pages.dart';
import 'package:soccer/app/shared/widgets/appbar.dart';

import '../controllers/highlight_controller.dart';

class HighlightView extends GetView<HighlightController> {
  const HighlightView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Highlight',
        subtitle: 'UEFA Champions League',
        imagePath: 'assets/images/mbappe.png',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Obx(() => ListView.builder(
              itemCount: controller.highlights.length,
              itemBuilder: (context, index) {
                return HighlightCardView(
                  title: controller.highlights[index].title,
                  thumbnail: controller.highlights[index].thumbnail,
                );
              },
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
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
}
