import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';

class EmptyTasks extends StatelessWidget {
  const EmptyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),

        SizedBox(height: 143.h),
        Text(
          'There are no tasks yet,\n Press the button\n To add New Task',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: AppTextStyle.light,
            color: AppColor.lightBlack,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 39.sp),
        AppSvg.emptyTasks(width: double.infinity, hight: 268.sp),
        SizedBox(height: 143.h),
      ],
    );
  }
}
