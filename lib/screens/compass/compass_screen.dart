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
import 'package:permission_handler/permission_handler.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:vibration/vibration.dart';

// Project imports:
import '../../app_common_data/export.dart';
import '../../public_providers/export.dart';
import '../../shared_customization/export.dart';
import 'cubit/compass_cubit.dart';

class CompassScreen extends StatefulWidget {
  const CompassScreen({
    super.key,
  });

  @override
  State<CompassScreen> createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {
  late BuildContext _context;
  bool _hasPermissions = false;
  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );
  Duration sensorInterval = SensorInterval.normalInterval;

  DateTime _lastVibration = DateTime.now();
  final List<int> focAngles = [0, 90, 180, 270]; // các mốc


  @override
  void initState() {
    debugPrint("DEBUG: ===> BRANCH_DETAIL DISPOSE");
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _fetchPermissionStatus();
    });
  }

  @override
  void dispose() {
    debugPrint("DEBUG: ===> BRANCH_DETAIL DISPOSE");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppUserCubit, AppUserState>(
        builder: (context, appUserState) {
      return BlocBaseScreen<CompassCubit, CompassState>(
        createCubit: (_) => CompassCubit(),
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
                          child: Column(
                            children: [
                              Expanded(
                                child: StreamBuilder<CompassEvent>(
                                  stream: FlutterCompass.events,
                                  builder: (context, snapshot) {
                                    if (snapshot.hasError) {
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        spacing: 16,
                                        children: [
                                          AppText(
                                            i18n.Tool.NoSensor,
                                            style: AppTextStyle.textSecondary14W600,
                                          ),
                                          Assets.icons.icSensor
                                              .svg(width: 50, height: 50)
                                        ],
                                      );
                                    }
                                                              
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                    CompassEvent? data = snapshot.data;
                                    double? direction = snapshot.data?.heading;
                                    // if direction is null, then device does not support this sensor
                                    // show error message
                                    if (data == null || direction == null)
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        spacing: 16,
                                        children: [
                                          AppText(
                                            i18n.Tool.NoSensor,
                                            style: AppTextStyle.textSecondary14W600,
                                          ),
                                          Assets.icons.icSensor
                                              .svg(width: 50, height: 50)
                                        ],
                                      );
                                                              
                                    if (direction < 0) {
                                      direction = 360 + direction;
                                    }
                                                              
                                    double angle = (direction * (math.pi / 180) * -1);

                                    if (focAngles.any((foc) => foc == angle.toInt())) {
                                      if (DateTime.now().difference(_lastVibration).inMilliseconds > 1000) {
                                        _triggerVibration();
                                        _lastVibration = DateTime.now();
                                      }
                                    }

                                    return Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Stack(
                                          children: [
                                            Transform.rotate(
                                              angle: angle,
                                              child: Assets.icon.icCompass.image(),
                                            ),
                                            Positioned(
                                              top: 50,
                                              bottom: 50,
                                              right: 50,
                                              left: 50,
                                              child: Assets.icon.icPointer.image(),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 16),
                                        AppText(
                                          "${direction.toStringAsFixed(0)}°",
                                          style: AppTextStyle.textGray90014W500
                                              .copyWith(fontSize: 36),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              StreamBuilder<MagnetometerEvent>(
                                stream: magnetometerEventStream(samplingPeriod: sensorInterval),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    return Container();
                                  }

                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                  MagnetometerEvent? data = snapshot.data;
                                  if (data == null)
                                    return Container();

                                  double? _magneticField = math.sqrt(
                                    math.pow(data.x, 2) + math.pow(data.y, 2) + math.pow(data.z, 2),
                                  );

                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppContainer(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(color: AppColors.gray300),
                                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                        color: AppColors.gray100,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          spacing: 8,
                                          children: [
                                            Assets.icons.icMagnet.svg(width: 24),
                                            AppText(
                                              "${_magneticField.toStringAsFixed(0)} µT",
                                              style: AppTextStyle.textSecondary16W500,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              )
                            ],
                          ),
                        ),

                        ///
                        /// DIVIDER
                        ///
                        AppContainer(
                          width: 1.sw,
                          height: 1,
                          color: AppColors.gray300,
                          margin: EdgeInsets.symmetric(vertical: 16),
                        ),
                        AppContainer(
                          child: StreamBuilder<Position>(
                            stream: Geolocator.getPositionStream(
                                locationSettings: locationSettings),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Text(
                                    'Error reading heading: ${snapshot.error}');
                              }

                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              Position? position = snapshot.data;
                              // if direction is null, then device does not support this sensor
                              // show error message
                              if (position == null) {
                                return _buildPermissionSheet();
                              }

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          spacing: 8,
                                          children: [
                                            AppText(
                                              i18n.Tool.Latitude,
                                              style: AppTextStyle
                                                  .textSecondary14W400,
                                            ),
                                            AppText(
                                              position.latitude.decimalToDMS(),
                                              style: AppTextStyle
                                                  .textSecondary14W600
                                                  .copyWith(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          spacing: 8,
                                          children: [
                                            AppText(
                                              i18n.Tool.Latitude,
                                              style: AppTextStyle
                                                  .textSecondary14W400,
                                            ),
                                            AppText(
                                              position.longitude.decimalToDMS(),
                                              style: AppTextStyle
                                                  .textSecondary14W600
                                                  .copyWith(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                        AppContainer(
                          width: 1.sw,
                          child: StreamBuilder<BarometerEvent>(
                            stream: barometerEventStream(samplingPeriod: sensorInterval),
                            builder: (context, snapshot) {
                              if ( snapshot.hasError) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 16,
                                  children: [
                                    AppText(
                                      i18n.Tool.NoSensor + " Barometer",
                                      style: AppTextStyle.textSecondary14W600,
                                    ),
                                    Assets.icons.icSensor
                                        .svg(width: 50, height: 50)
                                  ],
                                );
                              }

                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              BarometerEvent? barometer = snapshot.data;
                              // if direction is null, then device does not support this sensor
                              // show error message
                              if ( snapshot.hasError || barometer == null) {
                                return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: 16,
                                children: [
                                  AppText(
                                    i18n.Tool.NoSensor + "Barometer",
                                    style: AppTextStyle.textSecondary14W600,
                                  ),
                                  Assets.icons.icSensor
                                      .svg(width: 50, height: 50)
                                ],
                                );
                              }

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          spacing: 8,
                                          children: [
                                            AppText(
                                              i18n.Tool.Atmospheric,
                                              style: AppTextStyle
                                                  .textSecondary14W400,
                                            ),
                                            AppText(
                                              barometer.pressure.toStringAsFixed(1) + "hPa",
                                              style: AppTextStyle
                                                  .textSecondary14W600
                                                  .copyWith(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          spacing: 8,
                                          children: [
                                            AppText(
                                              i18n.Tool.Elevation,
                                              style: AppTextStyle
                                                  .textSecondary14W400,
                                            ),
                                            AppText(
                                              barometer.pressure.pressureToAltitude().toStringAsFixed(1) + "m",
                                              style: AppTextStyle
                                                  .textSecondary14W600
                                                  .copyWith(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
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

  Future<void> _triggerVibration() async {
    if (await Vibration.hasVibrator() ?? false) {
      Vibration.vibrate(duration: 200); // rung 200ms
    }
  }

  void _fetchPermissionStatus() {
    Permission.locationWhenInUse.status.then((status) {
      if (mounted) {
        setState(() => _hasPermissions = status == PermissionStatus.granted);
      }
    });
  }
}