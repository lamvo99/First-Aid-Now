part of 'compass_cubit.dart';

@freezed
class CompassState
    with _$CompassState, BlocBaseState {
  const factory CompassState({
    @Default("vi") String languageCode,
    String? errorMessage,
    ScreenValue? status,
  }) = _Initial;
}
