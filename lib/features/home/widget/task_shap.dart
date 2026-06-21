import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';

class TaskShap extends StatelessWidget {
  const TaskShap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withAlpha(50),
            blurRadius: 4,
            spreadRadius: 0,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(20.r),
        color: AppColor.taskColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'My First Task',
                  style: TextStyle(
                    fontWeight: AppTextStyle.regular,
                    fontSize: 12.sp,
                    color: AppColor.gray,
                  ),
                ),

                Spacer(),
                Text(
                  '11/03/2025\n05:00 PM',
                  style: TextStyle(
                    fontWeight: AppTextStyle.regular,
                    fontSize: 12.sp,
                    color: AppColor.gray,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 84.w),
              child: Text(
                'Improve my English skills by trying to speekImprove my English skills by trying to speekImprove my English skills by trying to speekImprove my English skills by trying to speekImprove my English skills by trying to speek',
                style: TextStyle(
                  fontWeight: AppTextStyle.light,
                  fontSize: 14.sp,
                  color: AppColor.lightBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
