import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import 'custom_svg_wrapper.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSvgWrapper(path: AppAssets.logo);
  }
}
