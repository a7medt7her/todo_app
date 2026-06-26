import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/const/routs.dart';
import 'package:todo_app/core/helper/image.dart';
import 'package:todo_app/core/unitles/padding.dart';
import 'package:todo_app/core/widgets/header.dart';

import 'package:todo_app/features/settings/widget/setting_tile.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(username: 'a'),
            Padding(
              padding: AppPadding.defaultPadding,
              child: Column(
                children: [
                  SizedBox(height: 37.h),
                  SettingTile(
                    onTap: () =>
                        Navigator.pushNamed(context, Routs.updateProfile),
                    leading: AppSvg.profileIcon(width: 24.w, hight: 24.h),
                    text: 'Profile',
                  ),
                  SizedBox(height: 24.h),
                  SettingTile(
                    onTap: () =>
                        Navigator.pushNamed(context, Routs.forgetPassword),
                    leading: AppSvg.passwordIcon(width: 24.w, hight: 24.h),
                    text: 'Change Password',
                  ),
                  SizedBox(height: 24.h),
                  SettingTile(
                    leading: AppSvg.settings(width: 24.w, hight: 24.h),
                    text: 'Settings',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
