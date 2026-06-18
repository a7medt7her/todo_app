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
import 'package:todo_app/features/auth/view_model/login_cubit/cubit/login_cubit.dart';
import 'package:todo_app/features/auth/widgets/image.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<LoginView> {
  var userName = GlobalKey<FormState>();
  var password = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: Color(0xFFF3F5F4),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageFlag(),
              SizedBox(height: 23.h),

              Padding(
                padding: AppPadding.defaultPadding,
                child: BlocBuilder<LoginCubit, LoginState>(
                  builder: (context, state) {
                    var cubit = LoginCubit.get(context);
                    return Column(
                      children: [
                        CustomTextFiled(
                          keyForm: userName,
                          validator: AppValidator.emailValidator,
                          hintText: 'Username',
                          controller: cubit.userNameController,
                          prefixIcon: AppSvg.profileIcon(
                            width: 24.w,
                            hight: 24.w,
                          ),
                          obscureText: false,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextFiled(
                          keyForm: password,
                          validator: AppValidator.passwordValidator,

                          hintText: 'Password',
                          controller: cubit.passwordController,
                          prefixIcon: AppSvg.passwordIcon(
                            width: 24.w,
                            hight: 24.w,
                          ),
                          suffixIcon: IconButton(
                            onPressed: cubit.passwordViability,
                            icon: AppSvg.combinedShape(
                              width: 24.w,
                              hight: 24.w,
                            ),
                          ),
                          obscureText: cubit.isVisible1,
                        ),

                        SizedBox(height: 23.h),
                      ],
                    );
                  },
                ),
              ),

              CoustomElvatedbutton(
                onPressed: () {
                  if (userName.currentState!.validate() &&
                      password.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, Routs.home);
                  }
                },
                text: 'Login',
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
                    'Don’t Have An Account? ',
                    style: TextStyle(
                      fontWeight: AppTextStyle.extraLight,
                      color: AppColor.gray,
                      fontSize: 14.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routs.register);
                    },
                    child: Text(
                      'Register',
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
