part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState, BlocBaseState {
  const factory HomeState.initial({
    String? errorMessage,
    ScreenValue? status,
    required DateTime currentDate,
    @Default([]) List<PersonalEvent> listPersonalEvent,
    Locale? locale,
    EmergencyNumber? emergencyNumber,
    BannerAd? bannerAd,
  }) = _Initial;
}
