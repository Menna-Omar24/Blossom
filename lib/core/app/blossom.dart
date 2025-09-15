import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/onboarding/view/onboarding_connect_view.dart';
import '../../features/splash/view/splash_view.dart';
import '../theme/app_theme.dart';

class Blossom extends StatelessWidget {
  const Blossom({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        routes: {
          SplashView.id: (_) => SplashView(),
          OnboardingConnectView.id: (_) => OnboardingConnectView(),
        },
        initialRoute: SplashView.id,
      ),
    );
  }
}
