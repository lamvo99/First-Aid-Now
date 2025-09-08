// ignore_for_file: use_build_context_synchronously

// Dart imports:

// Flutter imports:

import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../model/export.dart';
import '../../public_providers/export.dart';
import '../../shared_customization/export.dart';
import '/screens/bloc_base_screen.dart';
import 'cubit/wooden_fish_cubit.dart';

class WoodenFishScreen extends StatefulWidget {
  const WoodenFishScreen({
    super.key,
  });

  @override
  State<WoodenFishScreen> createState() => _WoodenFishScreenState();
}

class _WoodenFishScreenState extends State<WoodenFishScreen>
    with SingleTickerProviderStateMixin {
  late BuildContext _context;

  late AnimationController _controller;
  late Animation<double> _rotation;
  bool _showMallet = false;
  final AudioPlayer _player = AudioPlayer();

  Timer? _autoClickTimer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    // Dùi gõ vung khoảng -30° → 0°
    _rotation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: pi / 6), weight: 1),
      TweenSequenceItem(tween: Tween(begin: pi / 6, end: 0.0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _showMallet = false;
        });
        _controller.reset();
      }
    });
  }

  Future<void> _onMokClick(String audio) async {
    try {
      setState(() {
        _showMallet = true;
      });
      //
      _controller.forward(from: 0);
      _player.play(AssetSource(audio));
      _context.read<WoodenFishCubit>().createCount();
    } catch (e) {}
  }

  @override
  void dispose() {
    _controller.dispose();
    _player.dispose();
    _autoClickTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBaseScreen<WoodenFishCubit, WoodenFishState>(
      createCubit: (context) => WoodenFishCubit()..initData(),
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


        BlocListener<WoodenFishCubit, WoodenFishState>(
            listenWhen: (previous, current) =>
                previous.isAuto != current.isAuto,
            listener: (context, currentState) {
              if (currentState.isAuto) {
                _autoClickTimer =
                    Timer.periodic(Duration(seconds: 1), (timer) {
                      if (mounted &&
                          currentState.moBonk?.assetsUrl != null) {
                        _onMokClick(currentState.moBonk!.assetsUrl!);
                      }
                    });
              } else {
                _autoClickTimer?.cancel();
              }
            }),
      ],
      builder: (context, state) {
        _context = context;

        return AppLayout(
          title: "event.title",
          showAppBar: false,
          body: AppContainer(
            width: 1.sw,
            height: 1.sh,
            color: AppColors.white,
            image: DecorationImage(
                image: state.isBgOne
                    ? AssetImage("assets/images/bg_mo_1.jpg")
                    : AssetImage("assets/images/bg_mo_2.jpg"),
                fit: BoxFit.fitHeight),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                children: [
                  ///
                  ///  APP BAR
                  ///
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
                          i18n.WoodenFish.Title,
                          style: AppTextStyle.textSecondary14W500
                              .copyWith(color: AppColors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      ///
                      /// SETTING
                      ///
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet<void>(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.0)),
                            ),
                            backgroundColor: AppColors.white,
                            builder: (BuildContext modalContext) {
                              return BlocProvider.value(
                                value:
                                    BlocProvider.of<WoodenFishCubit>(context),
                                child: _buildModalContent(modalContext),
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          child: Assets.icons.icSettingTotal.svg(
                              colorFilter: ColorFilter.mode(
                                AppColors.white,
                                BlendMode.srcIn,
                              ),
                              width: 24,
                              height: 24),
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: Builder(builder: (context) {
                      if (state.status.isInit) {
                        return const Center(child: CircularLoadingAnimation());
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _onMokClick(state.moBonk!.assetsUrl!);
                            },
                            behavior: HitTestBehavior.opaque,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // Con mõ (đặt ở giữa, shake khi animation chạy)
                                AppContainer(
                                  width: 200,
                                  height: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      AppText(
                                        state.count.toString(),
                                        style: AppTextStyle.textSecondary14W500
                                            .copyWith(
                                          color: AppColors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Expanded(
                                        child: AppContainer(
                                          child: Image.asset(
                                              state.isMoOne
                                                  ? 'assets/images/mo_1.png'
                                                  : 'assets/images/mo_2.png',
                                              width: 100),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Dùi gõ (ở trên, quay xuống khi animation chạy)
                                if (_showMallet)
                                  Positioned(
                                    left: 80,
                                    bottom: 30,
                                    child: AnimatedBuilder(
                                      animation: _rotation,
                                      builder: (context, child) {
                                        return Transform.rotate(
                                          angle: _rotation.value,
                                          alignment: Alignment.bottomRight,
                                          // đầu dùi nằm topLeft
                                          child: child,
                                        );
                                      },
                                      child: Image.asset(
                                          'assets/images/dui_go.png',
                                          width: 80),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(height: 32),
                        ],
                      );
                    }),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildModalContent(BuildContext context) {
    return BlocBuilder<WoodenFishCubit, WoodenFishState>(
      builder: (context, currentState) {
        return AppContainer(
          width: 1.sw,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(i18n.WoodenFish.Setting,
                      style: AppTextStyle.textSecondary14W500),
                ],
              ),

              ///
              /// SET AUDIO
              ///
              AppField(
                label: i18n.WoodenFish.MediaWooden,
                isRequired: false,
                errorLabel: "",
                child: AppDropdownButton<Audio>(
                  onChanged: (value) {
                    _context
                        .read<WoodenFishCubit>()
                        .updateState((state) => state.copyWith(moBonk: value));
                    sp.setBonkAudio(value!.assetsUrl ?? "");
                    _player.play(AssetSource(value.assetsUrl!));
                  },
                  value: currentState.moBonk,
                  isExpanded: true,
                  items: currentState.listBonk.map((value) {
                    return DropdownItemModel<Audio>(
                      value: value,
                      label: value.name ?? "",
                    );
                  }).toList(),
                  selectedCondition: (_) => false,
                ),
              ),

              ///
              ///
              ///
              AppField(
                label: i18n.WoodenFish.Background,
                errorLabel: "",
                isRequired: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 6,
                  children: [
                    AppRadio(
                      value: currentState.isBgOne,
                      onTap: () {
                        _context.read<WoodenFishCubit>().updateState(
                            (state) => state.copyWith(isBgOne: true));
                        sp.setBackground(true);
                      },
                    ),
                    Expanded(
                      child: AppText(
                        i18n.WoodenFish.Light,
                        style: AppTextStyle.textSecondary14W500,
                      ),
                    ),
                    SizedBox(width: 8),
                    AppRadio(
                      value: !currentState.isBgOne,
                      onTap: () {
                        _context.read<WoodenFishCubit>().updateState(
                            (state) => state.copyWith(isBgOne: false));
                        sp.setBackground(false);
                      },
                    ),
                    Expanded(
                      child: AppText(
                        i18n.WoodenFish.Dark,
                        style: AppTextStyle.textSecondary14W500,
                      ),
                    )
                  ],
                ),
              ),

              ///
              ///
              ///
              AppField(
                label: i18n.WoodenFish.Image,
                errorLabel: "",
                isRequired: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 6,
                  children: [
                    AppRadio(
                      value: currentState.isMoOne,
                      onTap: () {
                        _context.read<WoodenFishCubit>().updateState(
                            (state) => state.copyWith(isMoOne: true));
                        sp.setMoOne(true);
                      },
                    ),
                    Expanded(
                      child: AppText(
                        "${i18n.WoodenFish.Image} 1",
                        style: AppTextStyle.textSecondary14W500,
                      ),
                    ),
                    SizedBox(width: 8),
                    AppRadio(
                      value: !currentState.isMoOne,
                      onTap: () {
                        _context.read<WoodenFishCubit>().updateState(
                            (state) => state.copyWith(isMoOne: false));
                        sp.setMoOne(false);
                      },
                    ),
                    Expanded(
                      child: AppText(
                        "${i18n.WoodenFish.Image} 2",
                        style: AppTextStyle.textSecondary14W500,
                      ),
                    )
                  ],
                ),
              ),

              ///
              ///
              ///
              AppField(
                label: i18n.WoodenFish.AutoClick,
                errorLabel: "",
                isRequired: false,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 6,
                  children: [
                    AppToggleButton(
                      value: currentState.isAuto,
                      onChanged: (val) {
                        _context.read<WoodenFishCubit>().updateState((state) =>
                            state.copyWith(isAuto: !currentState.isAuto));
                      },
                    ),
                    Expanded(
                      child: AppText(
                        i18n.WoodenFish.Auto,
                        style: AppTextStyle.textSecondary14W500,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
