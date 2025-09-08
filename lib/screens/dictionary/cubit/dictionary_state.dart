part of 'dictionary_cubit.dart';

@freezed
class DictionaryState with _$DictionaryState, BlocBaseState {
  const factory DictionaryState.initial({
    String? errorMessage,
    ScreenValue? status,
    @Default("") String serachValue,
    BannerAd? bannerAd,
  }) = _Initial;
}
