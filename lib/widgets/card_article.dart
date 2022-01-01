import 'package:flutter/material.dart';

import 'package:course_online_app/theme.dart';

class CardArticle extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String category;
  final bool isLike;

  const CardArticle({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.category,
    required this.isLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(16),
            ),
            child: Image.asset(
              imageUrl,
              width: 86,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                width: 136,
                child: Text(
                  title,
                  style: darkBlueTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                category,
                style: greyTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            isLike ? 'assets/icon_love_filled.png' : 'assets/icon_love.png',
            width: 16,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
