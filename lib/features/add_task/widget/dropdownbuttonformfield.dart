import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/features/add_task/model/drop_down.dart';

class CustomDropdownField extends StatefulWidget {
  const CustomDropdownField({super.key});

  @override
  State<CustomDropdownField> createState() => _CustomDropdownFieldState();
}

class _CustomDropdownFieldState extends State<CustomDropdownField> {
  DropDown? selectedItem;

  late final List<DropDown> items = [
    DropDown(
      Category: Text(
        'Home',
        style: TextStyle(
          fontWeight: AppTextStyle.regular,
          fontSize: 14.sp,
          color: AppColor.lightBlack,
        ),
      ),
      icons: AppSvg.home(width: 28.w, hight: 28.h),
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
      icons: AppSvg.personal(width: 28.w, hight: 28.h),
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
      icons: AppSvg.work(width: 28.w, hight: 28.h),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<DropDown>(
      value: selectedItem,
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
      ),
      items: items.map((item) {
        return DropdownMenuItem<DropDown>(
          value: item,
          child: Row(
            children: [
              item.icons,
              SizedBox(width: 15.w),
              item.Category,
            ],
          ),
        );
      }).toList(),
      onChanged: (DropDown? value) {
        setState(() {
          selectedItem = value;
        });
      },
    );
  }
}
