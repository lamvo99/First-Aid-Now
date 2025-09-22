// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import 'components/action_item.dart';
import 'cubit/tools_cubit.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({super.key});

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {
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
    return BlocBaseScreen<ToolsCubit, ToolsState>(
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
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: AppRefreshIndicator(
            onRefresh: () async {
            },
            child: Column(
              spacing: 12,
              children: [
                ///
                /// ACCESS BAR
                ///

                TitleComponentWidget(
                  title: i18n.Tool.Quick,
                  child: Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: ActionItem(
                          onTap: () {
                            context.pushNamed(Routes.compassScreen);
                          },
                          title: i18n.Tool.Flashlight,
                          icon: Assets.icons.icFlashlight,
                          color: AppColors.primary300,
                        ),
                      ),
                      Expanded(
                        child: ActionItem(
                          onTap: () {},
                          title: i18n.Tool.Sos,
                          icon: Assets.icons.icSiren,
                          color: AppColors.primary300,
                        ),
                      ),
                      Expanded(
                        child: ActionItem(
                          onTap: () {},
                          title: i18n.Tool.Card,
                          icon: Assets.icons.icCardInfo,
                          color: AppColors.primary300,
                        ),
                      )
                    ],
                  ),
                ),

                TitleComponentWidget(
                  title: i18n.Tool.FirstAidKit,
                  child: Row(
                    spacing: 8,
                    children: [
                      Expanded(
                        child: ActionItem(
                          onTap: () {
                            context.pushNamed(Routes.compassScreen);
                          },
                          title: i18n.Tool.Cpr,
                          icon: Assets.icons.icCpr,
                          color: AppColors.primary300,
                        ),
                      ),
                      Expanded(
                        child: ActionItem(
                          onTap: () {},
                          title: i18n.Tool.Timer,
                          icon: Assets.icons.icTimer,
                          color: AppColors.primary300,
                        ),
                      ),
                      Expanded(
                        child: ActionItem(
                          onTap: () {
                            context.pushNamed(Routes.supplyScreen);
                          },
                          title: i18n.Tool.Kit,
                          icon: Assets.icons.icFirstAidKit,
                          color: AppColors.primary300,
                        ),
                      )
                    ],
                  ),
                ),

                TitleComponentWidget(
                  title: i18n.Tool.FirstAidKit,
                  child: Column(
                    spacing: 8,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            child: ActionItem(
                              onTap: () {
                                context.pushNamed(Routes.compassScreen);
                              },
                              title: i18n.Tool.Compass,
                              icon: Assets.icons.icCompass,
                              color: AppColors.primary300,
                            ),
                          ),
                          Expanded(
                            child: ActionItem(
                              onTap: () {
                                context.pushNamed(Routes.soundMeterScreen);
                              },
                              title: i18n.Tool.SoundMeter,
                              icon: Assets.icons.icMeter,
                              color: AppColors.primary300,
                            ),
                          ),
                          Expanded(
                            child: ActionItem(
                              onTap: () {},
                              title: i18n.Tool.NoteVoice,
                              icon: Assets.icons.icVoice,
                              color: AppColors.primary300,
                            ),
                          )
                        ],
                      ),
                      Row(
                        spacing: 8,
                        children: [
                          Expanded(
                            child: ActionItem(
                              onTap: () {
                                context.pushNamed(Routes.compassScreen);
                              },
                              title: i18n.Tool.NotePad,
                              icon: Assets.icons.icNotepad,
                              color: AppColors.primary300,
                            ),
                          ),
                          Expanded(
                            child: ActionItem(
                              onTap: () {},
                              title: i18n.Tool.Thermometer,
                              icon: Assets.icons.icThermometer,
                              color: AppColors.primary300,
                            ),
                          ),
                          Expanded(
                            child: ActionItem(
                              onTap: () {},
                              title: i18n.Tool.Alarm,
                              icon: Assets.icons.icAlarm,
                              color: AppColors.primary300,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
