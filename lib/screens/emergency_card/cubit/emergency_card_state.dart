part of 'emergency_card_cubit.dart';

@freezed
class EmergencyCardState
    with _$EmergencyCardState, BlocBaseState {
  const factory EmergencyCardState({
    EmergencyCard? emergencyCard,

    ///
    /// EDIT INFO
    ///
    @Default(false) bool isEditInfo,
    @Default(Owner()) Owner owner,
    @Default(MedicalInfo()) MedicalInfo medicalInfo,
    @Default([]) List<EmergencyContact> emergencyContacts,
    @Default('') String instructions,
    @Default(VisibilityInfo()) VisibilityInfo visibility,
    ScreenValue? status,
    String? errorMessage,
  }) = _Initial;
}
