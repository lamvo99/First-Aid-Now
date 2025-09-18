// Package imports:
import 'package:bloc/bloc.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:first_aid/app_common_data/common_data/global_variable.dart';
import 'package:first_aid/data/emergency_number_data.dart';
import 'package:first_aid/model/emergency_number/emergency_number.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// Project imports:
import '../../../model/export.dart';
import '../../../shared_customization/export.dart';
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'home_state.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> with UpdateBlocBaseState<HomeState> {
  HomeCubit() : super(HomeState.initial());

  AppConfig appConfig = AppConfig();

  void initData() async {
    emit(state.copyWith(status: ScreenValue.init()));
    await Future.wait([
      // getPersonalEvents(),
      getBannerAd(),
      getBaseCountryCode(),
    ]);
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Future<void> getBaseCountryCode() async {
    String? locale = await Devicelocale.currentLocale;
    if (locale.isNotEmptyOrNull) {
      Locale localeCountry =
          Locale(locale!.split("-")[0], locale.split("-")[1]);
      EmergencyNumber? emergencyNumber =
          allEmergencyPhonenumber.firstOrElseNull((p) =>
              p.locale?.toUpperCase() ==
              localeCountry.countryCode?.toUpperCase());
      emit(state.copyWith(
          locale: localeCountry, emergencyNumber: emergencyNumber));
    }
  }

  Future<void> getBannerAd() async {
    if (kReleaseMode) {
      BannerAd(
          adUnitId: AdHelper.bannerAdUnitId,
          request: AdRequest(),
          size: AdSize.banner,
          listener: BannerAdListener(
            onAdLoaded: (ad) {
              emit(state.copyWith(bannerAd: ad as BannerAd));
            },
            onAdFailedToLoad: (ad, err) {
              print("Failed to load a banner ad: ${err.message}");
              ad.dispose();
            },
          )).load();
    }
  }

  // Future<void> getPersonalEvents() async {
  //   try {
  //     List<PersonalEvent> personalEvents =
  //         await appDatabase.getPersonalEvents();
  //     emit(state.copyWith(listPersonalEvent: personalEvents));
  //   } catch (e) {}
  // }

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
