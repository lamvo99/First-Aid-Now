// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/merit/merit.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/merit_journal/components/merit_journal_item.dart';
import 'package:first_aid/screens/merit_journal/cubit/merit_journal_cubit.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import 'components/merit_bar_chart.dart';
import 'components/merit_journal_widget.dart';

class MeritJournalScreen extends StatefulWidget {
  const MeritJournalScreen({super.key});

  @override
  State<MeritJournalScreen> createState() => _MeritJournalScreenState();
}

class _MeritJournalScreenState extends State<MeritJournalScreen> {
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
    return BlocBaseScreen<MeritJournalCubit, MeritJournalState>(
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

        return Stack(
          children: [
            AppContainer(
              width: 1.sw,
              height: 1.sh,
              color: AppColors.white,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: AppRefreshIndicator(
                onRefresh: () async {
                  _context.read<MeritJournalCubit>().getListMerit();
                },
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      ///
                      /// CHART
                      ///
                      AppText(
                        "Thống kê",
                        style: AppTextStyle.textSecondary14W500.copyWith(fontSize: 20),
                      ),
                      SizedBox(height: 12),
                      MeritBarChart(
                        state: state,
                        listMerit: state.meritList,
                      ),

                      SizedBox(height: 12),
                      AppText(
                        i18n.MeritJournal.List,
                        style: AppTextStyle.textSecondary14W500
                            .copyWith(fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      if (state.meritList.isEmptyOrNull) ...[
                        NO_DATA_WIDGET,
                      ] else ...[
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8.h,
                            crossAxisSpacing: 8.h,
                            childAspectRatio: 1.3,
                          ),
                          itemCount: state.meritList.length,
                          itemBuilder: (context, index) {
                            MeritModel merit = state.meritList[index];
                            return MeritJournalItem(
                              meritModel: merit,
                              onTap: () {
                                showMeritBottom(
                                  context,
                                  state: state,
                                  event: merit,
                                  isAdd: false,
                                );
                              },
                            );
                          },
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ),

            ///
            /// FAB
            ///
            Positioned(
              bottom: 16.h,
              right: 16.h,
              child: GestureDetector(
                onTap: () {
                  showMeritBottom(
                    context,
                    state: state,
                    event: MeritModel(
                      id: 0,
                      meritType: MeritType.LIBERATION,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                    ),
                  );
                },
                child: Assets.icons.icAddCircle.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.primary700, BlendMode.srcIn),
                    width: 40.w,
                    height: 40.w),
              ),
            ),
          ],
        );
      },
    );
  }

  ///
  ///  Add/Edit Personal Event
  ///
  Future<void> showMeritBottom(
    BuildContext context, {
    required MeritJournalState state,
    required MeritModel event,
    bool isAdd = true,
  }) async {
    return showModalBottomSheet(
        isDismissible: true,
        isScrollControlled: true,
        context: context,
        backgroundColor: AppColors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        builder: (_) {
          return StatefulBuilder(builder: (context, setStater) {
            return AppContainer(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: Colors.white,
              width: 1.sw,
              child: MeritJournalContentWidget(
                meritModel: event,
                isAdd: isAdd,
                onDelete: () {
                  List<MeritModel> merits = List.from(state.meritList);
                  merits.removeWhere((e) => e.id == event.id);
                  _context.read<MeritJournalCubit>().updateState(
                      (state) => state.copyWith(meritList: merits));
                  meritBoxHelper.meritBox.remove(event.id);
                  notificationHelper.flutterLocalNotificationsPlugin
                      .cancel(event.id.hashCode);
                  Navigator.pop(_context);
                  showSuccessBanner(content: i18n.Event.DeleteSuccess);
                },
                onPersonalEventChanged: (MeritModel? meritEvent) {
                  if (meritEvent != null) {
                    if (isAdd) {
                      MeritEntity meritEntity =
                          MeritEntity.formModel(meritEvent);
                      meritBoxHelper.meritBox.put(meritEntity);

                      Navigator.pop(_context);
                      showSuccessBanner(content: i18n.MeritJournal.AddSuccess);
                      _context.read<MeritJournalCubit>().getListMerit();
                    } else {
                      MeritEntity meritEntity =
                          MeritEntity.formModel(meritEvent);
                      meritBoxHelper.meritBox.put(meritEntity);
                      Navigator.pop(_context);
                      showSuccessBanner(content: i18n.Event.EditSuccess);
                      _context.read<MeritJournalCubit>().getListMerit();
                    }
                  }
                },
              ),
            );
          });
        });
  }
}
