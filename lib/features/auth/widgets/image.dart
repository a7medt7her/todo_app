import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/unitles/asstes.dart';

class ImageFlag extends StatelessWidget {
  const ImageFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: 298.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
        image: DecorationImage(
          image: AssetImage(AssetsImage.Flage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
