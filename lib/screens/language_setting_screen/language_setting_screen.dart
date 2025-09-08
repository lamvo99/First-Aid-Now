// Flutter imports:
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/bloc_base_screen.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../public_providers/export.dart';
import '../../shared_customization/export.dart';
import 'cubit/language_setting_cubit.dart';

class LanguageSettingScreen extends StatefulWidget {
  const LanguageSettingScreen({
    super.key,
  });

  @override
  State<LanguageSettingScreen> createState() => _LanguageSettingScreenState();
}

class _LanguageSettingScreenState extends State<LanguageSettingScreen> {
  late BuildContext _context;

  @override
  void initState() {
    debugPrint("DEBUG: ===> BRANCH_DETAIL DISPOSE");
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<LanguageSettingCubit>(_context).initData();
    });
  }

  double indexSelect = 0;

  @override
  void dispose() {
    debugPrint("DEBUG: ===> BRANCH_DETAIL DISPOSE");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserCubit, AppUserState>(
        builder: (context, appUserState) {
      return BlocBaseScreen<LanguageSettingCubit, LanguageSettingState>(
        createCubit: (_) => LanguageSettingCubit(),
        onShowSuccess: (_, state) => Future(() => null),
        onShowSuccessDone: (_, state) {
          context.read<AppNotificationCubit>().notifyInApp(InAppNotification(
              type: state.status!.action!, data: state.status!.data));
        },
        listeners: [
          ///
          /// REALTIME IN APP NOTIFICATION
          ///
          InAppNotiListener(
            listener: (context, stateNoti, inAppNoti) {},
          ),
        ],
        builder: (context, state) {
          _context = context;
          return Center(
            child: AppLayout(
              onWillPop: () => Future.value(true),
              actions: [
                AppContainer(
                  child: AppTextButton(
                    padding: EdgeInsets.zero,
                    onPressed: () async {

                      sp.setLanguage(state.languageCode);
                      // setState(() {});
                    },
                    text: AppText(
                      i18n.CommonAction.Save,
                      style: AppTextStyle.textSecondary14W500
                          .copyWith(color: AppColors.primary700),
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
              title: i18n.Language.ChangeLanguage,
              body: Builder(builder: (context) {
                if (state.status.isInit) {
                  return const LoadingAnimation();
                }

                return Container(
                  width: 1.sw,
                  height: 1.sh,
                  color: AppColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 12,
                    children: [
                      InkWell(
                        onTap: () async {
                          try {
                            _context.read<LanguageSettingCubit>().updateState(
                                (state) => state.copyWith(languageCode: "vi"));
                          } catch (e) {
                            print('Failed to update setting: $e');
                          }
                        },
                        child: AppContainer(
                          border: const Border(
                              bottom: BorderSide(
                                  color: AppColors.gray200, width: 0.5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          width: 1.sw,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText(i18n.Language.Vi,
                                        style: AppTextStyle.textSecondary14W500),
                                  ],
                                ),
                              ),
                              AppRadio(
                                value: state.languageCode == "vi",
                                onTap: () async {
                                  // try {
                                  _context
                                      .read<LanguageSettingCubit>()
                                      .updateState((state) =>
                                          state.copyWith(languageCode: "vi"));
                                },
                                isCircle: true,
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          try {
                            _context.read<LanguageSettingCubit>().updateState(
                                (state) => state.copyWith(languageCode: "en"));
                          } catch (e) {
                            print('Failed to update setting: $e');
                          }
                        },
                        child: AppContainer(
                          border: const Border(
                              bottom: BorderSide(
                                  color: AppColors.gray200, width: 0.5)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          width: 1.sw,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AppText(i18n.Language.En,
                                        style: AppTextStyle.textSecondary14W500),
                                  ],
                                ),
                              ),
                              AppRadio(
                                value: state.languageCode == "en",
                                onTap: () async {
                                  _context
                                      .read<LanguageSettingCubit>()
                                      .updateState((state) =>
                                          state.copyWith(languageCode: "en"));
                                },
                                isCircle: true,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          );
        },
      );
    });
  }
}
