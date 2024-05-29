import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:soccer/app/modules/home/controllers/home_controller.dart';

class HistoryMatchCardView extends GetView<HomeController> {
  final String homeName;
  final String awayName;
  final String score;

  const HistoryMatchCardView(
      {required this.homeName,
      required this.awayName,
      required this.score,
      Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var scoreTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w600,
    );
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Text(
            "Uefa Champions League",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                homeName,
                style: scoreTextStyle,
              ),
              Text(
                score,
                style: scoreTextStyle,
              ),
              Text(
                awayName,
                style: scoreTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
