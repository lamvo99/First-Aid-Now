part of 'meditation_cubit.dart';

@freezed
class MeditationState with _$MeditationState, BlocBaseState {
  const factory MeditationState.initial({
    String? errorMessage,
    ScreenValue? status,
  }) = _Initial;
}
