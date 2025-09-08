// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'meditation_state.dart';
part 'meditation_cubit.freezed.dart';

class MeditationCubit extends Cubit<MeditationState>
    with UpdateBlocBaseState<MeditationState> {
  MeditationCubit() : super(const MeditationState.initial());

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));
  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
