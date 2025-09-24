// Flutter imports:
import 'package:first_aid/model/export.dart';
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app_common_data/export.dart';
import '../../../public_providers/export.dart';
import '../../../shared_customization/export.dart';

// Project imports:

part 'emergency_card_state.dart';

part 'emergency_card_cubit.freezed.dart';

class EmergencyCardCubit extends Cubit<EmergencyCardState>
    with UpdateBlocBaseState<EmergencyCardState> {
  EmergencyCardCubit() : super(const EmergencyCardState());

  Future<void> initData() async {
    emit(state.copyWith(status: ScreenValue.init()));
    await Future.wait([getEmergencyCard()]);
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Future<void> getEmergencyCard() async {
    EmergencyCard? emergencyCard = await AppDatabase().getEmergencyCard();
    emit(state.copyWith(emergencyCard: emergencyCard));
  }

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
