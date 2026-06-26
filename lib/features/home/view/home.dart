import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/padding.dart';
import 'package:todo_app/features/home/widget/empty_tasks.dart';
import 'package:todo_app/core/widgets/header.dart';
import 'package:todo_app/features/home/widget/not_empty_tasks.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final String accessToken = args['accessToken'];
    List<String> taskes = [''];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routs.settings);
                },
                child: Header(
                  trailing: taskes.isEmpty
                      ? null
                      : GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, Routs.addTask),
                          child: AppSvg.addTask2(width: 24.w, hight: 24.h),
                        ),
                  username: args['userName'],
                ),
              ),
              Padding(
                padding: AppPadding.defaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 54.h),
                    taskes.isEmpty ? EmptyTasks() : NotEmptyTasks(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: taskes.isEmpty
          ? FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, Routs.addTask);
              },
              backgroundColor: AppColor.primary,
              shape: const CircleBorder(),
              child: AppSvg.addTask(),
            )
          : null,
    );
  }
}
