import 'package:course_online_app/theme.dart';
import 'package:course_online_app/widgets/course_item.dart';
import 'package:course_online_app/widgets/menubar_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'assets/btn_back.png',
                  width: 26,
                ),
              ),
            ),
            Text(
              'Course Details',
              style: darkBlueTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 14,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                'assets/btn_wishlist.png',
                width: 26,
              ),
            ),
          ],
        ),
      );
    }

    Widget videoTrailer() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        margin: EdgeInsets.all(12),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/course_detail.png',
              ),
            ),
            Image.asset(
              'assets/btn_play.png',
              width: 45,
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Text(
          'UI Design : Wireframe to\nVisual Design',
          style: darkBlueTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 18,
          ),
        ),
      );
    }

    Widget profileMentor() {
      return ListTile(
        dense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        title: Text(
          'Shem Bizo',
          style: darkBlueTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          'Mentor UI Designer',
          style: greyTextStyle.copyWith(
            fontWeight: medium,
            fontSize: 10,
          ),
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/profile_mentor.png',
          ),
        ),
        trailing: Image.asset(
          'assets/icon_right.png',
          width: 24,
        ),
      );
    }

    Widget menubar() {
      return Container(
        height: 30,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 24,
            ),
            MenubarItem(
              isActive: false,
              name: 'About',
            ),
            SizedBox(
              width: 12,
            ),
            MenubarItem(
              isActive: true,
              name: 'Lesson',
            ),
            SizedBox(
              width: 12,
            ),
            MenubarItem(
              isActive: false,
              name: 'Tools',
            ),
            SizedBox(
              width: 12,
            ),
            MenubarItem(
              isActive: false,
              name: 'Resource',
            ),
            SizedBox(
              width: 12,
            ),
            MenubarItem(
              isActive: false,
              name: 'Review',
            ),
            SizedBox(
              width: 12,
            ),
          ],
        ),
      );
    }

    Widget courseList() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Container(
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              CourseItem(
                id: 1,
                name: 'Visual Design Intro',
                time: '04:47',
              ),
              SizedBox(
                height: 12,
              ),
              CourseItem(
                id: 2,
                name: 'Design Reference',
                time: '03:45',
              ),
              SizedBox(
                height: 12,
              ),
              CourseItem(
                id: 3,
                name: 'Create Moodboard',
                time: '03:45',
              ),
              SizedBox(
                height: 12,
              ),
              CourseItem(
                id: 4,
                name: 'Wireframe to Visual Design Part 1',
                time: '09:03',
              ),
              SizedBox(
                height: 12,
              ),
              CourseItem(
                id: 5,
                name: 'Wireframe to Visual Design Part 2',
                time: '09:03',
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
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
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: defaultMargin),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'price',
                      style: greyTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Free',
                      style: greenTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Start Course',
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
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
                height: 24,
              ),
              videoTrailer(),
              SizedBox(
                height: 12,
              ),
              title(),
              profileMentor(),
              SizedBox(
                height: 12,
              ),
              menubar(),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(left: defaultMargin),
                child: Text(
                  'Course List',
                  style: darkBlueTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              courseList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: navbar(),
    );
  }
}
