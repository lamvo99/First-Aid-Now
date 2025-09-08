import 'package:first_aid/app_common_data/app_colors.dart';
import 'package:first_aid/app_common_data/app_text_sytle.dart';
import 'package:first_aid/app_common_data/export.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/shared_customization/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 2), () {
        context.pushAndReplaceNamed(Routes.mainScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppContainer(
        width: 1.sw,
        height: 1.sh,
        color: AppColors.primary100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              Assets.icon.icon.image(),
              AppText(
                i18n.Splash.Name,
                style:
                    AppTextStyle.textSecondary16W500.copyWith(fontSize: 34.sp, fontWeight: FontWeight.bold),
              ),
              AppText(
                i18n.Splash.Subtitle,
                style: AppTextStyle.textSecondary16W400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
