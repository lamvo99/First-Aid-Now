// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/dictionary/cubit/dictionary_cubit.dart';
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

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  late BuildContext _context;



  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  void dispose() {
    if (kReleaseMode) {
      _context.read<DictionaryCubit>().state.bannerAd?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBaseScreen<DictionaryCubit, DictionaryState>(
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
                  _context.read<DictionaryCubit>().updateState(
                      (state) => state.copyWith(serachValue: value));
                },
                placeholder: i18n.CommonAction.Search,
                suffixIcon: Assets.icons.icSearch.svg(),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        );
      },
    );
  }
}
