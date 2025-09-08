// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app_common_data/export.dart';
import '../../../public_providers/export.dart';
import '../../../shared_customization/export.dart';

// Project imports:

part 'language_setting_state.dart';

part 'language_setting_cubit.freezed.dart';

class LanguageSettingCubit extends Cubit<LanguageSettingState>
    with UpdateBlocBaseState<LanguageSettingState> {
  LanguageSettingCubit() : super(const LanguageSettingState());


  Future<void> initData() async {
    emit(state.copyWith(status: ScreenValue.init()));
    await Future.wait([getSettingLanguage()]);
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Future<void> getSettingLanguage() async {
    String locale = sp.prefs.getString("devices_locale") ?? "vi";
    emit(state.copyWith(
      languageCode: locale,
    ));
  }

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
