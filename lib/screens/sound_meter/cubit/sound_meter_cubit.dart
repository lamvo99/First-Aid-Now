// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../public_providers/export.dart';
import '../../../shared_customization/export.dart';

// Project imports:

part 'sound_meter_state.dart';

part 'sound_meter_cubit.freezed.dart';

class SoundMeterCubit extends Cubit<SoundMeterState>
    with UpdateBlocBaseState<SoundMeterState> {
  SoundMeterCubit() : super(const SoundMeterState());


  Future<void> initData() async {
    emit(state.copyWith(status: ScreenValue.init()));
    emit(state.copyWith(status: ScreenValue.running()));
  }

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
