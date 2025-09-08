part of 'language_setting_cubit.dart';

@freezed
class LanguageSettingState
    with _$LanguageSettingState, BlocBaseState {
  const factory LanguageSettingState({
    @Default("vi") String languageCode,
    String? errorMessage,
    ScreenValue? status,
  }) = _Initial;
}
