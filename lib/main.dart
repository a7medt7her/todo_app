import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/features/auth/view/login_view.dart';
import 'package:todo_app/features/auth/view/register_view.dart';
import 'package:todo_app/features/home/view/home.dart';
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
        theme: ThemeData(textTheme: GoogleFonts.lexendDecaTextTheme()),
        debugShowCheckedModeBanner: false,
        routes: {
          Routs.startScreen: (context) => StartScreen(),
          Routs.logIn: (context) => LoginView(),
          Routs.register: (context) => RegisterView(),
          Routs.home: (context) => Home(),
        },
        initialRoute: Routs.startScreen,
      ),
    );
  }
}
