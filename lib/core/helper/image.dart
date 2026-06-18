import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/core/unitles/asstes.dart';

class AppSvg {
  static SvgPicture startScreen({double? width, double? hight}) {
    return SvgPicture.asset(
      AssetsImage.startScreen,
      width: width,
      height: hight,
    );
  }

  static SvgPicture emptyTasks({double? width, double? hight}) {
    return SvgPicture.asset(
      AssetsImage.emptyTasks,
      width: width,
      height: hight,
    );
  }

  static SvgPicture passwordIcon({double? width, double? hight}) {
    return SvgPicture.asset(
      AssetsIcon.passwordIcon,
      width: width,
      height: hight,
    );
  }

  static SvgPicture profileIcon({double? width, double? hight}) {
    return SvgPicture.asset(
      AssetsIcon.profileIcon,
      width: width,
      height: hight,
    );
  }

  static SvgPicture combinedShape({double? width, double? hight}) {
    return SvgPicture.asset(
      AssetsIcon.combinedShape,
      width: width,
      height: hight,
    );
  }

  static SvgPicture work({double? width, double? hight}) {
    return SvgPicture.asset(AssetsIcon.work, width: width, height: hight);
  }

  static SvgPicture home({double? width, double? hight}) {
    return SvgPicture.asset(AssetsIcon.home, width: width, height: hight);
  }

  static SvgPicture calendar({double? width, double? hight}) {
    return SvgPicture.asset(AssetsIcon.calendar, width: width, height: hight);
  }

  static Image flag({double? width, double? hight, BoxFit? fit}) {
    return Image.asset(
      AssetsImage.Flage,
      width: width,
      height: hight,
      fit: fit,
    );
  }

  static SvgPicture addTask({double? width, double? hight}) {
    return SvgPicture.asset(AssetsIcon.addTask, width: width, height: hight);
  }
}
