import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/core/unitles/asstes.dart';

class Header extends StatelessWidget {
  const Header({super.key, this.trailing, required this.username});
  final Widget? trailing;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(AssetsImage.Flage)),
          ),
        ),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'hi',
              style: TextStyle(
                fontWeight: AppTextStyle.light,
                fontSize: 16.sp,
                color: AppColor.lightBlack,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              username,
              style: TextStyle(
                fontWeight: AppTextStyle.light,
                fontSize: 12.sp,
                color: AppColor.lightBlack,
              ),
            ),
          ],
        ),
        trailing: trailing,
      ),
    );
  }
}
