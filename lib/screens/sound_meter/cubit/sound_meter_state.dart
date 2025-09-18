part of 'sound_meter_cubit.dart';

@freezed
class SoundMeterState
    with _$SoundMeterState, BlocBaseState {
  const factory SoundMeterState({
    @Default("vi") String languageCode,
    String? errorMessage,
    ScreenValue? status,
  }) = _Initial;
}
