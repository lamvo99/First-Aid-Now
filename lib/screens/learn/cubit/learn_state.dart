part of 'learn_cubit.dart';

@freezed
class LearnState with _$LearnState, BlocBaseState {
  const factory LearnState.initial({
    String? errorMessage,
    ScreenValue? status,
    @Default("") String searchValue,
    BannerAd? bannerAd,
  }) = _Initial;
}
