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
    this.onTap,
    required this.obscureText,
    this.validator,
    this.keyForm,
  });
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final bool obscureText;
  final String? Function(String?)? validator;
  final GlobalKey<FormState>? keyForm;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
          fillColor: AppColor.white,
          filled: true,
          suffixIcon: suffixIcon,

          prefixIcon: Padding(
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
      ),
    );
  }
}
