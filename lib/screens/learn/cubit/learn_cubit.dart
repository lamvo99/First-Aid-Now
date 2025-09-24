// Package imports:

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// Project imports:
import '../../../shared_customization/export.dart';
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';

part 'learn_state.dart';

part 'learn_cubit.freezed.dart';

class LearnCubit extends Cubit<LearnState>
    with UpdateBlocBaseState<LearnState> {
  LearnCubit() : super(const LearnState.initial());

  final AppConfig _appConfig = AppConfig();

  void initData() async {
    emit(state.copyWith(status: ScreenValue.init()));
    loadBanner();
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Future<void> loadBanner() async {
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

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
