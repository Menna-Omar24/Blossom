import 'package:blossom/core/utils/app_position.dart';
import 'package:blossom/core/utils/app_size_box.dart';
import 'package:blossom/core/utils/app_string.dart';
import 'package:blossom/features/onboarding/view/onboarding_connect_view.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_assets_svg.dart';
import '../../../core/route/app_route.dart';
import '../../../core/utils/app_font_size.dart';
import '../../../core/widget/custom_svg_wrapper.dart';
import '../../../core/widget/app_logo.dart';

class SplashView extends StatefulWidget {
  static const id = AppRoute.splash;

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigation.goTo(
        context,
        OnboardingConnectView(),
        type: NavigationType.pushReplacement,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomSvgWrapper(path: AppAssetsSvg.bgWave, fit: BoxFit.cover),
          Positioned(
            top: AppPosition.h274,
            left: AppPosition.w21,
            child: CustomSvgWrapper(path: AppAssetsSvg.rocket),
          ),
          Positioned(
            top: AppPosition.h225,
            left: AppPosition.w253,
            child: CustomSvgWrapper(path: AppAssetsSvg.loveSplash),
          ),
          Positioned(
            top: AppPosition.h594,
            left: AppPosition.w335,
            child: CustomSvgWrapper(path: AppAssetsSvg.stock),
          ),
          SizedBox(
            height: AppSizeBox.h345,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [AppLogo()],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppFontSize.s55),
                  AppString.titleSplash,
                ),
                SizedBox(height: AppSizeBox.h8),
                Text(
                  AppString.desSplash,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppFontSize.s18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
import 'package:blossom/core/utils/app_position.dart';
import 'package:blossom/core/utils/app_size_box.dart';
import 'package:blossom/core/utils/app_string.dart';
import 'package:blossom/features/onboarding/view/onboarding_connect_view.dart';
import 'package:flutter/material.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_assets_svg.dart';
import '../../../core/route/app_route.dart';
import '../../../core/utils/app_font_size.dart';
import '../../../core/widget/custom_svg_wrapper.dart';
import '../../../core/widget/default_logo.dart';

class SplashView extends StatefulWidget {
  static const id = AppRoute.splash;

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          Navigation.goTo(
            context,
            const OnboardingConnectView(),
            type: NavigationType.pushReplacement,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background
          const SizedBox.expand(
            child: CustomSvgWrapper(
              path: AppAssetsSvg.bgWave,
              fit: BoxFit.cover,
            ),
          ),

          /// Positioned elements
          Positioned(
            top: AppPosition.h274,
            left: AppPosition.w21,
            child: const CustomSvgWrapper(path: AppAssetsSvg.rocket),
          ),
          Positioned(
            top: AppPosition.h225,
            left: AppPosition.w253,
            child: const CustomSvgWrapper(path: AppAssetsSvg.loveSplash),
          ),
          Positioned(
            top: AppPosition.h594,
            left: AppPosition.w335,
            child: const CustomSvgWrapper(path: AppAssetsSvg.stock),
          ),

          /// Logo
          SizedBox(
            height: AppSizeBox.h345,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [DefaultLogo()],
            ),
          ),

          /// Texts
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppString.titleSplash,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppFontSize.s55),
                ),
                SizedBox(height: AppSizeBox.h8),
                Text(
                  AppString.desSplash,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: AppFontSize.s18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/