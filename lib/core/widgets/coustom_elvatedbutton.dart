import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';

class CoustomElvatedbutton extends StatelessWidget {
  const CoustomElvatedbutton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.blurRadius,
    required this.spreadRadius,
    required this.dx,
    required this.dy,
    required this.color,
  });
  final VoidCallback onPressed;
  final String text;
  final double blurRadius;
  final double spreadRadius;
  final double dx;
  final double dy;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      child: Container(
        width: double.infinity,

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.primary,
              blurRadius: blurRadius,
              spreadRadius: spreadRadius,
              offset: Offset(dx, dy),
            ),
          ],
          color: color,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.w),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: AppTextStyle.light,
              color: AppColor.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
