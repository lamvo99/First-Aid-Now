part of 'emergency_number_cubit.dart';

@freezed
class EmergencyNumberState with _$EmergencyNumberState, BlocBaseState {
  const factory EmergencyNumberState.initial({
    @Default("") String search,
    String? errorMessage,
    ScreenValue? status,
  }) = _Initial;
}
