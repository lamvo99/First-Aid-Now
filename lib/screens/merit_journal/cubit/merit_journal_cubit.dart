// Package imports:

import 'package:bloc/bloc.dart';
import 'package:first_aid/model/merit/merit.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'merit_journal_state.dart';

part 'merit_journal_cubit.freezed.dart';

class MeritJournalCubit extends Cubit<MeritJournalState>
    with UpdateBlocBaseState<MeritJournalState> {
  MeritJournalCubit() : super(const MeritJournalState.initial());

  final AppConfig _appConfig = AppConfig();

  void initData() async {
    emit(state.copyWith(status: ScreenValue.init()));
    await getListMerit();
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Future<void> getListMerit() async {
    try {
      final query = meritBoxHelper.meritBox // Query
          .query()
          .build();
      final List<MeritEntity> listMerit = query.find();
      query.close();
      List<MeritModel> listMeritModel =
          listMerit.map((e) => e.toModel()).toList();
      emit(state.copyWith(
        meritList: listMeritModel,
        status: ScreenValue.success(),
      ));
    } catch (e) {
      print(e);
    }
  }

  @override
  void resetErrorMessage() => emit(state.copyWith(errorMessage: null));

  @override
  void resetStatus() => emit(state.copyWith(status: null));
}
