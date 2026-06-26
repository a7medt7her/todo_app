import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/core/helper/app_validator.dart';
import 'package:todo_app/core/unitles/padding.dart';
import 'package:todo_app/core/widgets/coustom_elvatedbutton.dart';
import 'package:todo_app/core/widgets/coustom_textfiled.dart';
import 'package:todo_app/features/auth/view_model/forget_password/cubit/forget_password_cubit.dart';
import 'package:todo_app/core/widgets/image_flag.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
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
                    BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
                      builder: (context, state) {
                        var cubit = ForgetPasswordCubit.get(context);
                        return Form(
                          key: formKey,
                          child: Column(
                            children: [
                              CustomTextFiled(
                                validator: AppValidator.passwordValidator,
                                hintText: 'Old Password',
                                controller: cubit.oldPasswordController,

                                obscureText: true,
                              ),
                              SizedBox(height: 10.h),
                              CustomTextFiled(
                                validator: AppValidator.passwordValidator,

                                hintText: 'New Password',
                                controller: cubit.newPasswordController,
                                obscureText: true,
                              ),
                              SizedBox(height: 10.h),
                              CustomTextFiled(
                                validator: (value) =>
                                    AppValidator.passwordConfirmValidator(
                                      value,
                                      cubit.newPasswordController.text,
                                    ),
                                hintText: 'Confirm Password',
                                controller: cubit.confirmPasswordController,

                                obscureText: true,
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
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, Routs.logIn);
                  }
                },
                text: 'Save',
                blurRadius: 10,
                spreadRadius: 0,
                dx: 0,
                dy: 5,
                color: Color(0xFF149954),
              ),
              SizedBox(height: 40.99.h),
            ],
          ),
        ),
      ),
    );
  }
}
