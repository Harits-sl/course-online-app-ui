import 'package:flutter/material.dart';

import 'package:course_online_app/theme.dart';

class MenubarItem extends StatelessWidget {
  final bool isActive;
  final String name;

  const MenubarItem({
    Key? key,
    required this.isActive,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle colorTextStyle = isActive ? blueTextStyle : darkBlueTextStyle;

    return InkWell(
      child: Container(
        width: 66,
        decoration: BoxDecoration(
          color: isActive ? Color(0xffD1E2FD) : whiteColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            name,
            style: colorTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
