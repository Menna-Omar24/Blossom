import 'package:blossom/core/utils/app_font_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_color.dart';
import '../utils/app_font_size.dart';
import '../utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.validator,
    required this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppTextStyle.medium(
        size: AppFontSize.s14,
        color: AppColor.lightBlack,
        fontFamily: AppFontFamily.inter,
      ),
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: AppColor.white,
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: AppTextStyle.medium(
          size: AppFontSize.s14,
          color: AppColor.lightBlack,
          fontFamily: AppFontFamily.inter,
        ),
        border: borderBuilder(),
        enabledBorder: borderBuilder(),
        focusedBorder: borderBuilder(color: AppColor.primary),
        errorBorder: borderBuilder(color: AppColor.red),
        focusedErrorBorder: borderBuilder(color: AppColor.primary),
      ),
    );
  }

  InputBorder borderBuilder({Color color = AppColor.lightGrey}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),
        borderSide: BorderSide(color: color),
      );
}
