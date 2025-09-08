// Package imports:

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'emergency_number_state.dart';

part 'emergency_number_cubit.freezed.dart';

class EmergencyNumberCubit extends Cubit<EmergencyNumberState>
    with UpdateBlocBaseState<EmergencyNumberState> {
  EmergencyNumberCubit() : super(const EmergencyNumberState.initial());

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
