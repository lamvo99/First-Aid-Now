// Flutter imports:
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/export.dart';
import 'package:first_aid/screens/bloc_base_screen.dart';
import 'package:first_aid/screens/emergency_card/components/emergency_card_edit_widget.dart';
import 'package:first_aid/screens/emergency_card/components/emergency_card_info_widget.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../public_providers/export.dart';
import '../../shared_customization/export.dart';
import 'cubit/emergency_card_cubit.dart';

class EmergencyCardScreen extends StatefulWidget {
  const EmergencyCardScreen({
    super.key,
  });

  @override
  State<EmergencyCardScreen> createState() => _EmergencyCardScreenState();
}

class _EmergencyCardScreenState extends State<EmergencyCardScreen> {
  late BuildContext _context;

  @override
  void initState() {
    debugPrint("DEBUG: ===> BRANCH_DETAIL DISPOSE");
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<EmergencyCardCubit>(_context).initData();
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
      return BlocBaseScreen<EmergencyCardCubit, EmergencyCardState>(
        createCubit: (_) => EmergencyCardCubit(),
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
                if (state.isEditInfo == false) ...[
                  AppContainer(
                    child: InkWell(
                      onTap: () {
                        context.read<EmergencyCardCubit>().updateState(
                              (state) => state.copyWith(
                                isEditInfo: true,
                                owner: state.emergencyCard?.owner ?? Owner(),
                                medicalInfo: state.emergencyCard?.medicalInfo ?? MedicalInfo(),
                                emergencyContacts: state.emergencyCard?.emergencyContacts ?? [],
                                instructions: state.emergencyCard?.instructions ?? "",
                                visibility: state.emergencyCard?.visibility ?? VisibilityInfo(),
                              ),
                            );
                      },
                      child: Assets.icons.icEdit.svg(),
                    ),
                  ),
                ],
                SizedBox(width: 16),
              ],
              title: i18n.EmergencyInfo.Title,
              body: Builder(builder: (context) {
                if (state.status.isInit) {
                  return const LoadingAnimation();
                }

                return Container(
                  width: 1.sw,
                  height: 1.sh,
                  color: AppColors.gray50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 12,
                    children: [
                      if (state.isEditInfo == true) ...[
                        Expanded(child: EmergencyCardEditWidget(state: state)),
                      ] else ...[
                        Expanded(
                          child: EmergencyCardInfoWidget(state: state),
                        ),
                      ],
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
