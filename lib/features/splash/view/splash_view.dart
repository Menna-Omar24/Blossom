import 'package:blossom/core/utils/app_string.dart';
import 'package:blossom/features/onboarding/view/onboarding_connect_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_route.dart';
import '../../../core/widget/custom_svg_wrapper.dart';
import '../../../core/widget/default_app_bar.dart';

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
          CustomSvgWrapper(path: AppAssets.bgWave, fit: BoxFit.cover),
          Positioned(
            top: 274.1.h,
            left: 21.99.w,
            child: CustomSvgWrapper(path: AppAssets.rocket),
          ),
          Positioned(
            top: 225.41.h,
            left: 253.98.w,
            child: CustomSvgWrapper(path: AppAssets.loveSplash),
          ),
          Positioned(
            top: 594.05.h,
            left: 335.26.w,
            child: CustomSvgWrapper(path: AppAssets.stock),
          ),
          SizedBox(
            height: 345.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [DefaultAppBar()],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 55.sp),
                  AppString.titleSplash,
                ),
                SizedBox(height: 8.97.h),
                Text(
                  AppString.desSplash,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
