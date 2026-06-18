import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/features/home/widget/task_shap.dart';

class NotEmptyTasks extends StatelessWidget {
  const NotEmptyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Tasks',
              style: TextStyle(
                color: AppColor.lightBlack,
                fontWeight: AppTextStyle.light,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(width: 15.w),
            Container(
              alignment: AlignmentGeometry.center,
              width: 14.w,
              height: 20.h,

              decoration: BoxDecoration(
                color: AppColor.primary.withAlpha(50),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Text(
                '5',
                style: TextStyle(
                  color: AppColor.primary,
                  fontWeight: AppTextStyle.regular,
                  fontSize: 12.sp,
                ),
              ),
            ),
            SizedBox(width: 22.w),
          ],
        ),
        SizedBox(height: 31.h),
        TaskShap(),
        TaskShap(),
        TaskShap(),
        TaskShap(),
        TaskShap(),
      ],
    );
  }
}
