import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    required this.controller,

    required this.obscureText,
    this.validator,
    this.maxLines,
    this.minLines,
    this.readOnly,
    this.onTap,
  });
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final TextEditingController controller;

  final bool obscureText;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int? minLines;
  final bool? readOnly;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly ?? false,
      minLines: minLines,
      maxLines: maxLines ?? 1,
      validator: validator,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColor.white,
        filled: true,
        suffixIcon: suffixIcon,

        prefixIcon: prefixIcon == null
            ? null
            : Padding(
                padding: EdgeInsets.only(left: 16.w, right: 15.w),
                child: prefixIcon,
              ),
        hintText: hintText,
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
    );
  }
}
