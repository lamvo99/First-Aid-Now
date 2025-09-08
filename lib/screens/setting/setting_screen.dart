// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:


import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/merit_journal/cubit/merit_journal_cubit.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import 'cubit/setting_cubit.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  late BuildContext _context;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBaseScreen<SettingCubit, SettingState>(
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
          padding: EdgeInsets.only(top: 64, left: 16, right: 16),
          child: AppRefreshIndicator(
            onRefresh: () async {
              _context.read<MeritJournalCubit>().getListMerit();
            },
            child: Column(
              spacing: 12,
              children: [
                _buildButtonNav(
                  onTap: () {
                    _context.pushNamed(Routes.changeLanguage);
                  },
                  title: i18n.Language.ChangeLanguage,
                  icon: Assets.icons.icLanguages
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildButtonNav({
    required Function() onTap,
    required String title,
    required SvgGenImage icon,
  }) {
    return AppContainer(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      boxShadow: AppColors.shadow2,
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.gray200),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 6,
          children: [
            icon.svg(width: 24, height: 24),
            Expanded(
              child: AppText(
                title,
                style: AppTextStyle.textGray90014W500,
              ),
            ),
            Assets.icons.icArrowRight.svg()
          ],
        ),
      ),
    );
  }
}
