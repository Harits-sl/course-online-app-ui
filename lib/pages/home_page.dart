import 'package:course_online_app/theme.dart';
import 'package:course_online_app/widgets/card_article.dart';
import 'package:course_online_app/widgets/card_category.dart';
import 'package:course_online_app/widgets/card_popular_course.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InkWell buttonHeader(imageUrl) {
      return InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(6),
        child: Container(
          width: 26,
          decoration: BoxDecoration(
            color: whiteColor,
            boxShadow: [shadow],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/profile.png',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                buttonHeader('assets/icon_search.png'),
                SizedBox(
                  width: 12,
                ),
                buttonHeader('assets/icon_notification.png'),
              ],
            ),
          ],
        ),
      );
    }

    Widget headline() {
      return Padding(
        padding: EdgeInsets.only(left: defaultMargin),
        child: Text(
          "Want to Study Class\nwhat's Today?",
          style: darkBlueTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
            letterSpacing: 0.5,
            height: 1.56,
          ),
        ),
      );
    }

    Widget category() {
      return Container(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 24,
            ),
            CardCategory(
              imageUrl: 'assets/icon_design.png',
              name: 'Design',
              totalCourse: 49,
            ),
            SizedBox(
              width: 12,
            ),
            CardCategory(
              imageUrl: 'assets/icon_softskill.png',
              name: 'Soft Skill',
              totalCourse: 12,
            ),
            SizedBox(
              width: 12,
            ),
            CardCategory(
              imageUrl: 'assets/icon_art.png',
              name: 'Art',
              totalCourse: 50,
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
      );
    }

    Widget popularCourse() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Course',
                    style: darkBlueTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Show all',
                    style: blueTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 215,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CardPopularCourse(
                    imageUrl: 'assets/course_1.png',
                    name: 'UI Design : Wireframe to Visual Design',
                    totalReview: 4016,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CardPopularCourse(
                    imageUrl: 'assets/course_2.png',
                    name: 'UI Design : Styleguide with Figma',
                    totalReview: 1055,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget article() {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Articles',
                    style: darkBlueTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Show all',
                    style: blueTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CardArticle(
              imageUrl: 'assets/article_1.png',
              title: 'How to: Work faster as Full Stack Designer',
              category: 'UI DESIGN',
              isLike: true,
            ),
            SizedBox(
              height: 12,
            ),
            CardArticle(
              imageUrl: 'assets/article_2.png',
              title: 'How to: Digital Art from Sketch',
              category: 'ART COURSE',
              isLike: false,
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      );
    }

    Widget navbar() {
      return Container(
        color: whiteColor,
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/icon_home.png',
              width: 24,
            ),
            Image.asset(
              'assets/icon_explore.png',
              width: 24,
            ),
            Image.asset(
              'assets/icon_whitelist.png',
              width: 24,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/profile.png',
                width: 24,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              header(),
              SizedBox(
                height: 12,
              ),
              headline(),
              SizedBox(
                height: 24,
              ),
              category(),
              SizedBox(
                height: 24,
              ),
              popularCourse(),
              SizedBox(
                height: 24,
              ),
              article(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: navbar(),
    );
  }
}
