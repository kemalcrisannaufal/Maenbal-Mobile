import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HighlightCardView extends GetView {
  final String thumbnail;
  final String title;
  final Function()? onTap;
  const HighlightCardView({
    required this.thumbnail,
    required this.title,
    this.onTap,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Image.network(
            thumbnail,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 15,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.black26,
            padding: EdgeInsets.all(10),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
