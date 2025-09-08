part of 'prayer_cubit.dart';

@freezed
class PrayerState with _$PrayerState, BlocBaseState {
  const factory PrayerState.initial({
    String? errorMessage,
    ScreenValue? status,
    @Default([]) List<Files> files,
    Files? currentFile,
  }) = _Initial;
}
