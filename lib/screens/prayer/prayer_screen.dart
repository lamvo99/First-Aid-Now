// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'dart:async';

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';

import 'components/prayer_play_widget.dart';
import 'cubit/prayer_cubit.dart';

class PrayerScreen extends StatefulWidget {
  const PrayerScreen({
    super.key,
  });

  @override
  State<PrayerScreen> createState() => _PrayerScreenState();
}

class _PrayerScreenState extends State<PrayerScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocBaseScreen<PrayerCubit, PrayerState>(
      createCubit: (context) => PrayerCubit()..initData().whenComplete(() {

      }),
      onShowSuccess: (_, state) => Future(() => null),
      onShowSuccessDone: (_, state) {
        context.read<AppNotificationCubit>().notifyInApp(InAppNotification(
            type: state.status!.action!, data: state.status!.data));
      },
      listeners: [
        ///
        ///
        ///
        InAppNotiListener(
          listener: (context, state, inAppNoti) async {},
        ),
      ],
      builder: (context, state) {
        return AppLayout(
          title: i18n.Prayer.Title,
          onWillPop: () => Future.value(true),
          showAppBar: false,
          body: AppContainer(
            width: 1.sw,
            height: 1.sh,
            image: DecorationImage(
              image: const AssetImage("assets/images/bg_mo_1.jpg"),
              fit: BoxFit.cover,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).canPop()
                              ? Navigator.of(context).pop()
                              : Navigator.of(context)
                              .pushReplacementNamed(Routes.mainScreen);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          child: Assets.icons.icArrowLeft.svg(
                              colorFilter: ColorFilter.mode(
                                AppColors.white,
                                BlendMode.srcIn,
                              ),
                              width: 24,
                              height: 24),
                        ),
                      ),
                      Expanded(
                        child: AppText(
                          i18n.Prayer.Title,
                          style: AppTextStyle.textSecondary14W500
                              .copyWith(color: AppColors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  ///
                  ///
                  ///
                  Expanded(child: Builder(builder: (context) {
                    if (state.status.isInit) {
                      return WaveDotLoadingAnimation();
                    }

                    return PrayerPlayWidget(state: state);
                  })),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
