import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/core/unitles/asstes.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.isEmpty});
  final bool isEmpty;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(AssetsImage.Flage)),
          ),
        ),
        SizedBox(width: 16.w),
        Column(
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
              'Ahmed Taher',
              style: TextStyle(
                fontWeight: AppTextStyle.light,
                fontSize: 12.sp,
                color: AppColor.lightBlack,
              ),
            ),
          ],
        ),
        Spacer(),
        isEmpty
            ? SizedBox()
            : GestureDetector(
                onTap: () => Navigator.pushNamed(context, Routs.addTask),
                child: AppSvg.addTask2(width: 24.w, hight: 24.h),
              ),
      ],
    );
  }
}
