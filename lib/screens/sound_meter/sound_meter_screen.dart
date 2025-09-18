// Flutter imports:
import 'dart:async';
import 'dart:math' as math;

import 'package:first_aid/gen/assets.gen.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/bloc_base_screen.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:noise_meter/noise_meter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../public_providers/export.dart';
import '../../shared_customization/export.dart';
import 'cubit/sound_meter_cubit.dart';

class SoundMeterScreen extends StatefulWidget {
  const SoundMeterScreen({
    super.key,
  });

  @override
  State<SoundMeterScreen> createState() => _SoundMeterScreenState();
}

class _SoundMeterScreenState extends State<SoundMeterScreen> {
  late BuildContext _context;
  bool _hasPermissions = false;
  NoiseReading? _latestReading;
  StreamSubscription<NoiseReading>? _noiseSubscription;
  NoiseMeter? noiseMeter;
  bool _isRecording = false;

  @override
  void initState() {
    debugPrint("DEBUG: ===> BRANCH_DETAIL DISPOSE");
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // BlocProvider.of<CompassCubit>(_context).initData();
      _fetchPermissionStatus();
    });
  }

  @override
  void dispose() {
    _noiseSubscription?.cancel();
    super.dispose();
  }

  void onData(NoiseReading noiseReading) =>
      setState(() => _latestReading = noiseReading);

  void onError(Object error) {
    print(error);
    stop();
  }

  /// Check if microphone permission is granted.
  Future<bool> checkPermission() async => await Permission.microphone.isGranted;

  /// Request the microphone permission.
  Future<void> requestPermission() async =>
      await Permission.microphone.request();

  /// Start noise sampling.
  Future<void> start() async {
    // Create a noise meter, if not already done.
    noiseMeter ??= NoiseMeter();

    // Check permission to use the microphone.
    //
    // Remember to update the AndroidManifest file (Android) and the
    // Info.plist and pod files (iOS).
    if (!(await checkPermission())) await requestPermission();

    // Listen to the noise stream.
    _noiseSubscription = noiseMeter?.noise.listen(onData, onError: onError);
    setState(() => _isRecording = true);
  }

  /// Stop sampling.
  void stop() {
    _noiseSubscription?.cancel();
    setState(() => _isRecording = false);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserCubit, AppUserState>(
        builder: (context, appUserState) {
      return BlocBaseScreen<SoundMeterCubit, SoundMeterState>(
        createCubit: (_) => SoundMeterCubit(),
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
              title: i18n.Tool.Compass,
              body: AppContainer(
                width: 1.sw,
                height: 1.sh,
                color: AppColors.white,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Builder(builder: (context) {
                  if (!_hasPermissions) {
                    return _buildPermissionSheet();
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
                        ///
                        /// COMPASS
                        ///
                        Expanded(
                          child: Center(
                            child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  minimum: 0,
                                  maximum: 150,
                                  maximumLabels: 5,
                                  axisLineStyle: AxisLineStyle(
                                    thickness: 15,
                                    cornerStyle: CornerStyle.bothCurve,
                                  ),

                                  ///
                                  /// RANGE
                                  ///
                                  ranges: <GaugeRange>[
                                    GaugeRange(
                                      startValue: 0,
                                      endValue: 50,
                                      color: AppColors.success500,
                                      startWidth: 10,
                                      endWidth: 10,
                                    ),
                                    GaugeRange(
                                      startValue: 50,
                                      endValue: 85,
                                      color: AppColors.yellow500,
                                      startWidth: 10,
                                      endWidth: 10,
                                    ),
                                    GaugeRange(
                                      startValue: 85,
                                      endValue: 120,
                                      color: AppColors.warning500,
                                      startWidth: 10,
                                      endWidth: 10,
                                    ),
                                    GaugeRange(
                                      startValue: 120,
                                      endValue: 150,
                                      color: AppColors.error500,
                                      startWidth: 10,
                                      endWidth: 10,
                                    ),
                                  ],

                                  ///
                                  /// POINTER
                                  ///
                                  pointers: <GaugePointer>[
                                    NeedlePointer(
                                      value: double.parse(
                                        (_latestReading?.meanDecibel ?? 0)
                                            .toStringAsFixed(0),
                                      ),
                                    ),
                                  ],

                                  ///
                                  /// NOTE
                                  ///
                                  annotations: <GaugeAnnotation>[
                                    GaugeAnnotation(
                                      widget: AppContainer(
                                        child: Text(
                                          '${(_latestReading?.meanDecibel ?? 0).toStringAsFixed(0)} dB',
                                          style: AppTextStyle
                                              .textSecondary16W500
                                              .copyWith(fontSize: 20),
                                        ),
                                      ),
                                      angle: 90,
                                      positionFactor: 0.5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 8,
                          children: [
                            Expanded(
                              child: _titleWidget(
                                  title: i18n.Tool.Mean,
                                  value: (_latestReading?.meanDecibel ?? 0)
                                      .toStringAsFixed(0)),
                            ),
                            Expanded(
                              child: _titleWidget(
                                  title: i18n.Tool.Max,
                                  value: (_latestReading?.maxDecibel ?? 0)
                                      .toStringAsFixed(0)),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          spacing: 8,
                          children: [
                            Expanded(
                              child: AppButton(
                                onPressed: start,
                                width: 1.sw,
                                label: i18n.Tool.Start,
                              ),
                            ),
                            Expanded(
                              child: AppButton(
                                onPressed: stop,
                                width: 1.sw,
                                label: i18n.Tool.Stop,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),

                        ///
                        /// DIVIDER
                        ///
                      ],
                    ),
                  );
                }),
              ),
            ),
          );
        },
      );
    });
  }

  Widget _buildPermissionSheet() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: <Widget>[
          AppText(
            i18n.Tool.LocationRequired,
            style: AppTextStyle.textSecondary14W500.copyWith(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          AppButton(
            onPressed: () {
              Permission.locationWhenInUse.request().then((ignored) {
                _fetchPermissionStatus();
              });
            },
            label: i18n.Tool.RequiredPermission,
          ),
          SizedBox(height: 16),
          AppButton(
            onPressed: () {
              openAppSettings().then((opened) {
                //
              });
            },
            label: i18n.Tool.OpenSetting,
          )
        ],
      ),
    );
  }

  void _fetchPermissionStatus() {
    Permission.microphone.request().then((status) {
      if (mounted) {
        setState(() => _hasPermissions = status == PermissionStatus.granted);
      }
    });
  }

  Widget _titleWidget({required String title, required String value}) {
    return AppContainer(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.primary300,
      padding: EdgeInsets.symmetric(vertical: 12),
      width: 1.sw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            title.toUpperCase(),
            style: AppTextStyle.textSecondary16W500,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: value,
                  style:
                      AppTextStyle.textSecondary16W600.copyWith(fontSize: 24),
                ),
                TextSpan(
                  text: " dB",
                  style: AppTextStyle.textSecondary16W600,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
