import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:soccer/app/shared/widgets/appbar.dart';

import '../controllers/news_detail_controller.dart';

class NewsDetailView extends GetView<NewsDetailController> {
  NewsDetailView({Key? key}) : super(key: key);
  final int newsId = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'News',
        subtitle: 'UEFA Champions League',
        imagePath: 'assets/images/mbappe.png',
      ),
      body: Obx(
        () => Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Text(
                controller.news.value.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                child: Image.network(
                  controller.news.value.thumbnail,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                controller.news.value.content,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          selectedItemColor: Colors.blue[700],
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Match',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
          ]),
    );
  }
}
