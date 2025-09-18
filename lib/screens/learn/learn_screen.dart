// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/learn/components/category_widget.dart';
import 'package:first_aid/screens/learn/components/continue_widget.dart';
import 'package:first_aid/screens/learn/components/lesson_for_you_widget.dart';
import 'package:first_aid/screens/learn/cubit/learn_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({super.key});

  @override
  State<LearnScreen> createState() => _LearnScreenState();
}

class _LearnScreenState extends State<LearnScreen> {
  late BuildContext _context;



  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  void dispose() {
    if (kReleaseMode) {
      _context.read<LearnCubit>().state.bannerAd?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBaseScreen<LearnCubit, LearnState>(
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
        _context = context;

        return AppContainer(
          width: 1.sw,
          height: 1.sh,
          color: AppColors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (state.bannerAd != null)
                Align(
                  alignment: Alignment.topCenter,
                  child: AppContainer(
                    width: state.bannerAd!.size.width.toDouble(),
                    height: state.bannerAd!.size.height.toDouble(),
                    child: AdWidget(ad: state.bannerAd!),
                  ),
                ),
              SizedBox(height: 8),
              AppTextField(
                onChanged: (value) {
                  _context.read<LearnCubit>().updateState(
                      (state) => state.copyWith(searchValue: value));
                },
                borderRadius: BorderRadius.circular(12),
                placeholder: i18n.CommonAction.Search,
                suffixIcon: Assets.icons.icSearch.svg(),
              ),
              SizedBox(height: 16.h),
              
              ///
              /// CONTIUE
              /// 
              ContinueWidget(state: state),
              SizedBox(height: 16.h),

              ///
              ///
              ///
              CategoryWidget(state: state),
              SizedBox(height: 16.h),

              ///
              ///
              ///
              LessonForYouWidget(state: state),
            ],
          ),
        );
      },
    );
  }
}
