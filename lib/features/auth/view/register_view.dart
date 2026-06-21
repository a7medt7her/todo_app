import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/core/helper/app_validator.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/core/unitles/app_text_style.dart';
import 'package:todo_app/core/unitles/padding.dart';
import 'package:todo_app/core/widgets/coustom_elvatedbutton.dart';
import 'package:todo_app/core/widgets/coustom_textfiled.dart';
import 'package:todo_app/features/auth/view_model/regestr_cubit/cubit/register_cubit.dart';
import 'package:todo_app/features/auth/widgets/image.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageFlag(),
              SizedBox(height: 23.h),

              Padding(
                padding: AppPadding.defaultPadding,
                child: Column(
                  children: [
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) {
                        var cubit = RegisterCubit.get(context);
                        return Form(
                          key: formKey,
                          child: Column(
                            children: [
                              CustomTextFiled(
                                validator: AppValidator.emailValidator,
                                hintText: 'Username',
                                controller: cubit.userNameController,
                                prefixIcon: AppSvg.profileIcon(
                                  width: 24.w,
                                  hight: 24.h,
                                ),
                                obscureText: false,
                              ),
                              SizedBox(height: 10.h),
                              CustomTextFiled(
                                validator: AppValidator.passwordValidator,

                                hintText: 'Password',
                                controller: cubit.passwordController,
                                prefixIcon: AppSvg.passwordIcon(
                                  width: 24.w,
                                  hight: 24.h,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: cubit.passwordViability,
                                  icon: AppSvg.combinedShape(
                                    width: 24.w,
                                    hight: 24.h,
                                  ),
                                ),
                                obscureText: cubit.isVisible1,
                              ),
                              SizedBox(height: 10.h),
                              CustomTextFiled(
                                validator: (value) =>
                                    AppValidator.passwordConfirmValidator(
                                      value,
                                      cubit.confirmPasswordController.text,
                                    ),
                                hintText: 'Confirm Password',
                                controller: cubit.confirmPasswordController,
                                prefixIcon: AppSvg.passwordIcon(
                                  width: 24.w,
                                  hight: 24.h,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: cubit.confirmPasswordViability,
                                  icon: AppSvg.combinedShape(
                                    width: 24.w,
                                    hight: 24.h,
                                  ),
                                ),
                                obscureText: cubit.isVisible2,
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    SizedBox(height: 23.h),
                  ],
                ),
              ),

              CoustomElvatedbutton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, Routs.home);
                  }
                },
                text: 'Register',
                blurRadius: 10,
                spreadRadius: 0,
                dx: 0,
                dy: 5,
                color: Color(0xFF149954),
              ),
              SizedBox(height: 40.99.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have An Account?',
                    style: TextStyle(
                      fontWeight: AppTextStyle.extraLight,
                      color: AppColor.gray,
                      fontSize: 14.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: AppTextStyle.regular,
                        color: AppColor.lightBlack,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
