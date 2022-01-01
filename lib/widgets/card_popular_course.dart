import 'package:course_online_app/pages/detail_page.dart';
import 'package:flutter/material.dart';

import 'package:course_online_app/theme.dart';

class CardPopularCourse extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int totalReview;

  const CardPopularCourse({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.totalReview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imageUrl,
                width: 180,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free',
                    style: greenTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 131,
                    child: Text(
                      name,
                      style: darkBlueTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icon_star.png',
                        width: 13,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/icon_star.png',
                        width: 13,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/icon_star.png',
                        width: 13,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/icon_star.png',
                        width: 13,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/icon_star.png',
                        width: 13,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '($totalReview)',
                        style: greyTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
