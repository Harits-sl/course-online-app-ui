import 'package:flutter/material.dart';

import 'package:course_online_app/theme.dart';

class CardCategory extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int totalCourse;

  const CardCategory({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.totalCourse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: 42,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              name,
              style: darkBlueTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '$totalCourse Course',
              style: greyTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
