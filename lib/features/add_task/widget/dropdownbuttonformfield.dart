import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/features/add_task/model/drop_down.dart';

class Dropdownbuttonformfield extends StatelessWidget {
  const Dropdownbuttonformfield({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DropDown> items = [
      DropDown(
        Category: Text(
          'Home',
          style: TextStyle(
            fontWeight: AppTextStyle.regular,
            fontSize: 14.sp,
            color: AppColor.lightBlack,
          ),
        ),
        icons: AppSvg.home(width: 28.w, hight: 28.sp),
      ),
      DropDown(
        Category: Text(
          'Personal',
          style: TextStyle(
            fontWeight: AppTextStyle.regular,
            fontSize: 14.sp,
            color: AppColor.lightBlack,
          ),
        ),
        icons: AppSvg.personal(width: 28.w, hight: 28.sp),
      ),
      DropDown(
        Category: Text(
          'Work',
          style: TextStyle(
            fontWeight: AppTextStyle.regular,
            fontSize: 14.sp,
            color: AppColor.lightBlack,
          ),
        ),
        icons: AppSvg.work(width: 28.w, hight: 28.sp),
      ),
    ];
    return DropdownButtonFormField(
      dropdownColor: AppColor.lightGray,
      decoration: InputDecoration(
        fillColor: AppColor.white,
        filled: true,

        hintText: 'Group',
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: AppTextStyle.extraLight,
          color: AppColor.gray,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColor.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColor.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColor.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: AppColor.error),
        ),
      ),
      items: items.map((old) {
        return DropdownMenuItem(
          value: old,
          child: Row(
            children: [
              old.icons,
              SizedBox(width: 15.w),
              old.Category,
            ],
          ),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}
