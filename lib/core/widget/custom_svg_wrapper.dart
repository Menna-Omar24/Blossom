import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgWrapper extends StatelessWidget {
  final String path;
  final double? height;
  final double? width;
  final BoxFit? fit;

  const CustomSvgWrapper({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(path, height: height, width: width);
  }
}
