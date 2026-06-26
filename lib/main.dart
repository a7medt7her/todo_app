import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/core/unitles/app_color.dart';
import 'package:todo_app/features/add_task/view/add_task_view.dart';
import 'package:todo_app/features/auth/view/forget_password.dart';
import 'package:todo_app/features/auth/view/login_view.dart';
import 'package:todo_app/features/auth/view/register_view.dart';
import 'package:todo_app/features/home/view/home.dart';
import 'package:todo_app/features/settings/view/settings_view.dart';
import 'package:todo_app/features/settings/view/update_profile.dart';
import 'package:todo_app/features/start_screens/view/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: AppColor.lightGray),
          scaffoldBackgroundColor: AppColor.lightGray,
          textTheme: GoogleFonts.lexendDecaTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          Routs.startScreen: (context) => StartScreen(),
          Routs.logIn: (context) => LoginView(),
          Routs.register: (context) => RegisterView(),
          Routs.home: (context) => Home(),
          Routs.forgetPassword: (context) => ForgetPassword(),
          Routs.addTask: (context) => AddTaskView(),
          Routs.settings: (context) => SettingsView(),
          Routs.updateProfile: (context) => UpdateProfile(),
        },
        initialRoute: Routs.startScreen,
      ),
    );
  }
}
