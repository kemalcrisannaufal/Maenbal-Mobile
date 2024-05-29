import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:soccer/app/modules/home/controllers/home_controller.dart';

class NextMatchCardView extends GetView<HomeController> {
  const NextMatchCardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.indigo,
        ),
        child: Obx(
          () {
            var additionalTextStyle = TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            );
            var mainTextStyle = TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            );
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Champions League Final",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      controller.homeTeam.value,
                      style: mainTextStyle,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "VS",
                      style: mainTextStyle,
                    ),
                    SizedBox(width: 10),
                    Text(
                      controller.awayTeam.value,
                      style: mainTextStyle,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                    Text(
                      controller.location.value,
                      style: additionalTextStyle,
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.access_time,
                      color: Colors.white,
                      size: 14,
                    ),
                    SizedBox(width: 10),
                    Text(
                      controller.time.value,
                      style: additionalTextStyle,
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
