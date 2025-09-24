// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:first_aid/data/emergency_number_data.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/model/emergency_number/emergency_number.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/emergency_number_list/components/emergency_phone_item.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import 'cubit/emergency_number_cubit.dart';

class EmergencyNumberScreen extends StatefulWidget {
  const EmergencyNumberScreen({super.key});

  @override
  State<EmergencyNumberScreen> createState() => _EmergencyNumberScreenState();
}

class _EmergencyNumberScreenState extends State<EmergencyNumberScreen> {
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
    return BlocBaseScreen<EmergencyNumberCubit, EmergencyNumberState>(
      createCubit: (context) => EmergencyNumberCubit(),
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

        return AppLayout(
          title: i18n.EmergencyNumber.List,
          onWillPop: () => Future.value(true),
          body: AppContainer(
            width: 1.sw,
            height: 1.sh,
            color: AppColors.white,
            padding: EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 16,
              children: [
                AppTextField(
                  onChanged: (value) {
                    _context.read<EmergencyNumberCubit>().updateState(
                        (state) => state.copyWith(search: value));
                  },
                  placeholder: i18n.CommonAction.Search,
                  borderRadius: BorderRadius.circular(16),
                  suffixIcon: Assets.icons.icSearch.svg(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 16,
                      children: [
                        _africaWidget(state),
                        _americaCaribbeanWidget(state),
                        _centralAmericaWidget(state),
                        _northAmericaWidget(state),
                        _southAmericaWidget(state),
                        _asiaWidget(state),
                        _europeWidget(state),
                        _oceaniaWidget(state),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _africaWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = africaList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.Africa,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }

  Widget _americaCaribbeanWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = americaCaribbeanList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.Caribbean,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }

  Widget _centralAmericaWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = americaCentralAmericaList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.CentralAmerica,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }

  Widget _northAmericaWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = americaNorthAmericaList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.NorthAmerica,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }

  Widget _southAmericaWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = southAmericaList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.SouthAmerica,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }

  Widget _asiaWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = asiaList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.Asia,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }

  Widget _europeWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = europeList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.Europe,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }

  Widget _oceaniaWidget(EmergencyNumberState state) {
    List<EmergencyNumber> listEmergency = oceaniaList
        .where((e) =>
            e.country!.contains(state.search) ||
            e.locale!.toLowerCase().contains(state.search.toLowerCase()))
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AppText(
          i18n.EmergencyNumber.Oceania,
          style: AppTextStyle.textSecondary14W600.copyWith(fontSize: 18),
        ),
        SizedBox(height: 12),
        if (listEmergency.isEmptyOrNull) ...[
          NO_DATA_WIDGET,
        ] else ...[
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 1.5,
            children: [
              ...listEmergency.map((emergencyNumber) {
                return EmergencyPhoneItem(emergencyNumber: emergencyNumber);
              })
            ],
          ),
        ]
      ],
    );
  }
}
