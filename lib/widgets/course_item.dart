import 'package:flutter/material.dart';

import 'package:course_online_app/theme.dart';

class CourseItem extends StatelessWidget {
  final int id;
  final String name;
  final String time;

  const CourseItem({
    Key? key,
    required this.id,
    required this.name,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Color(0xffD1E2FD),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                '$id',
                style: blueTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: darkBlueTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 14,
                ),
              ),
              Text(
                time,
                style: greyTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
