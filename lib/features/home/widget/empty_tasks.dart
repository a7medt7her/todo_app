import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/helper/image.dart';

class EmptyTasks extends StatelessWidget {
  const EmptyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 134.h),

        AppSvg.emptyTasks(width: double.infinity, hight: 367.h),
        SizedBox(height: 143.h),
      ],
    );
  }
}
