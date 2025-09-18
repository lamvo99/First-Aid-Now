// Package imports:

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'tools_state.dart';

part 'tools_cubit.freezed.dart';

class ToolsCubit extends Cubit<ToolsState>
    with UpdateBlocBaseState<ToolsState> {
  ToolsCubit() : super(const ToolsState.initial());

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
