import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/unitles/padding.dart';
import 'package:todo_app/core/widgets/coustom_textfiled.dart';
import 'package:todo_app/core/widgets/image_flag.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageFlag(),
          SizedBox(height: 23.h),
          Padding(
            padding: AppPadding.defaultPadding,
            child: CustomTextFiled(
              hintText: 'Username',
              controller: TextEditingController(),
              obscureText: false,
            ),
          ),
        ],
      ),
    );
  }
}
