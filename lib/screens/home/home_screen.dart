// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/public_providers/export.dart';
import 'package:first_aid/screens/home/components/category_learn_widget.dart';
import 'package:first_aid/screens/home/components/favourites_lesson_widget.dart';
import 'package:first_aid/screens/home/components/tips_widget.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import 'components/emergency_lesson_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late BuildContext _context;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      AppConfig appConfig = AppConfig();

      appConfig.checkUpdate();
    });
  }

  @override
  void dispose() {
    if (kReleaseMode) {
      _context.read<HomeCubit>().state.bannerAd?.dispose();
    }
    super.dispose();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    try {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launchUrl(launchUri);
    } catch (e) {
      showErrorBanner(content: e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBaseScreen<HomeCubit, HomeState>(
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
          showAppBar: false,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: SpeedDial(
            heroTag: 'work_time_screen',
            overlayColor: AppColors.black,
            overlayOpacity: 0.3,
            icon: Icons.phone_in_talk_rounded,
            iconTheme: IconThemeData(color: AppColors.white),
            backgroundColor: AppColors.PRIMARY_BASE,
            childMargin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            children: [
              if (state.emergencyNumber != null) ...[
                SpeedDialChild(
                  child: Assets.icons.icPoliceCar.svg(
                      colorFilter:
                          ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                      height: 22),
                  shape: CircleBorder(),
                  backgroundColor: AppColors.PRIMARY_BASE,
                  label: i18n.EmergencyNumber.Police,
                  labelStyle:
                      AppTextStyle.textSecondary14W500.copyWith(fontSize: 18),
                  foregroundColor: AppColors.gray300,
                  onTap: () {
                    _makePhoneCall(state.emergencyNumber!.police ?? "");
                  },
                ),
                SpeedDialChild(
                  child: Assets.icons.icAmbulanceCar.svg(
                      colorFilter:
                          ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                      height: 22),
                  shape: CircleBorder(),
                  backgroundColor: AppColors.PRIMARY_BASE,
                  label: i18n.EmergencyNumber.Ambulance,
                  labelStyle:
                      AppTextStyle.textSecondary14W500.copyWith(fontSize: 18),
                  foregroundColor: AppColors.gray300,
                  onTap: () {
                    _makePhoneCall(state.emergencyNumber!.ambulance ?? "");
                  },
                ),
                SpeedDialChild(
                  child: Assets.icons.icFireTruck.svg(
                      colorFilter:
                          ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                      height: 22),
                  shape: CircleBorder(),
                  backgroundColor: AppColors.PRIMARY_BASE,
                  label: i18n.EmergencyNumber.Fire,
                  labelStyle:
                      AppTextStyle.textSecondary14W500.copyWith(fontSize: 18),
                  foregroundColor: AppColors.gray300,
                  onTap: () {
                    _makePhoneCall(state.emergencyNumber!.fire ?? "");
                  },
                ),
              ],
              SpeedDialChild(
                child: Assets.icons.icNumerPhoneList.svg(
                    colorFilter:
                        ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                    height: 22),
                shape: CircleBorder(),
                backgroundColor: AppColors.PRIMARY_BASE,
                label: i18n.EmergencyNumber.List,
                labelStyle:
                    AppTextStyle.textSecondary14W500.copyWith(fontSize: 18),
                foregroundColor: AppColors.gray300,
                onTap: () {
                  _context.pushNamed(Routes.emergencyNumber);
                },
              ),
            ],
          ),
          body: Builder(builder: (context) {
            if (state.status.isInit) {
              return LoadingAnimation();
            }

            return Column(
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
                Expanded(
                  child: AppContainer(
                    width: 1.sw,
                    height: 1.sh,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 16,
                        children: [
                          ///
                          /// Search
                          ///
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 12,
                            children: [
                              InkWell(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: Icon(CupertinoIcons.list_bullet),
                              ),
                              Expanded(
                                child: AppTextField(
                                  onChanged: (value) {},
                                  placeholder: i18n.CommonAction.Search,
                                  suffixIcon: Assets.icons.icSearch.svg(),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ],
                          ),

                          EmergencyLessonWidget(state: state),

                          ///
                          /// Emergency Learn
                          ///
                          CategoryLearnWidget(state: state),

                          ///
                          ///
                          ///
                          FavouritesLessonWidget(state: state),

                          ///
                          ///
                          ///
                          TipsWidget(state: state),

                          ///
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
        );
      },
    );
  }

  Widget _buildActionWidget(
      {required Function() onTap,
      required String title,
      required AssetGenImage image}) {
    return InkWell(
      onTap: onTap,
      child: AppContainer(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.gray300),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: image.image(fit: BoxFit.cover)),
            SizedBox(height: 8),
            AppText(
              title,
              style: AppTextStyle.textSecondary14W500,
            ),
          ],
        ),
      ),
    );
  }
}
