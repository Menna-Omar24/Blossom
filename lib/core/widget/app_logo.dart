import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_assets_svg.dart';
import 'custom_svg_wrapper.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSvgWrapper(path: AppAssetsSvg.logo, height: 146.h, width: 175.w);
  }
}
