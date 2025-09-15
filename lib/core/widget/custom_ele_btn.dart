import 'package:blossom/core/utils/app_font_family.dart';
import 'package:blossom/core/utils/app_font_size.dart';
import 'package:blossom/core/utils/app_height.dart';
import 'package:blossom/core/utils/app_radius.dart';
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppHeight.h53,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: AppColor.primary,
          backgroundColor: AppColor.primary,
          shadowColor: AppColor.primary,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r10),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyle.semiBold(
            size: AppFontSize.s14,
            fontFamily: AppFontFamily.inter,
          ),
        ),
      ),
    );
  }
}
