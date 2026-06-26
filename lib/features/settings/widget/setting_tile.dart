import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({
    super.key,
    required this.leading,
    required this.text,
    this.onTap,
  });
  final SvgPicture leading;
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: AppColor.white,
      ),
      child: ListTile(
        onTap: onTap,
        leading: leading,
        title: Text(
          text,
          style: TextStyle(
            fontWeight: AppTextStyle.regular,
            fontSize: 16.sp,
            color: AppColor.lightBlack,
          ),
        ),
        trailing: AppSvg.arrow(width: 21.w, hight: 21.h),
      ),
    );
  }
}
