import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/core/unitles/padding.dart';
import 'package:todo_app/features/home/widget/empty_tasks.dart';
import 'package:todo_app/features/home/widget/header.dart';
import 'package:todo_app/features/home/widget/not_empty_tasks.dart';
import 'package:todo_app/features/home/widget/task_shap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> taskes = [];
    return Scaffold(
      backgroundColor: AppColor.lightGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppPadding.defaultPadding,
            child: Column(
              children: [
                Header(),
                SizedBox(height: 54.h),
                taskes.isEmpty ? EmptyTasks() : NotEmptyTasks(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.primary,
        shape: const CircleBorder(),
        child: AppSvg.addTask(),
      ),
    );
  }
}
