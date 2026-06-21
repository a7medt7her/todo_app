import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/core/widgets/coustom_elvatedbutton.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 90.h, left: 36.w, right: 37.3.w),
              child: AppSvg.startScreen(width: 301.7.w, hight: 342.68.h),
            ),
            SizedBox(height: 60.h),
            Text(
              'Welcome To\n Do It !',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: AppTextStyle.regular,
                color: AppColor.lightBlack,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.h),
            Text(
              "Ready to conquer your tasks? Let's Do It together!",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: AppTextStyle.medium,
                color: AppColor.gray,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 56.h),

            CoustomElvatedbutton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routs.logIn);
              },
              text: 'Get Started',
              blurRadius: 10,
              spreadRadius: 0,
              dx: 0,
              dy: 5,
              color: Color(0xFF149954),
            ),
            SizedBox(height: 74.99.h),
          ],
        ),
      ),
    );
  }
}
