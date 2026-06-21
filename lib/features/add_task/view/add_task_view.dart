import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/core/unitles/asstes.dart';
import 'package:todo_app/core/unitles/padding.dart';
import 'package:todo_app/core/widgets/coustom_textfiled.dart';
import 'package:todo_app/features/add_task/widget/dropdownbuttonformfield.dart';

class AddTaskView extends StatelessWidget {
  AddTaskView({super.key});
  final TextEditingController title = TextEditingController();
  final TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Task',
          style: TextStyle(
            fontWeight: AppTextStyle.light,
            fontSize: 19.sp,
            color: AppColor.lightBlack,
          ),
        ),
        actionsIconTheme: IconThemeData(color: AppColor.lightBlack),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.defaultPadding,
          child: Column(
            children: [
              Container(
                width: 261.w,
                height: 207.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: AssetImage(AssetsImage.Flage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 29.h),
              CustomTextFiled(
                hintText: 'title',
                controller: title,
                obscureText: false,
              ),
              SizedBox(height: 15.h),
              CustomTextFiled(
                minLines: 1,
                maxLines: 4,
                hintText: 'description',
                controller: description,
                obscureText: false,
              ),
              SizedBox(height: 15.h),
              Dropdownbuttonformfield(),
              SizedBox(height: 15.h),
              InputDatePickerFormField(
                firstDate: DateTime.now(),
                lastDate: DateTime(2030),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
