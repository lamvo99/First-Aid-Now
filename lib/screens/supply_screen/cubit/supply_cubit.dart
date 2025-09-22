// Package imports:

import 'package:bloc/bloc.dart';
import 'package:first_aid/app_common_data/enum/supply_sort.dart';
import 'package:first_aid/model/supply/supply.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../app_common_data/export.dart';
import '../../../shared_customization/export.dart';
import '/public_providers/config/bloc_base_state.dart';
import '/public_providers/config/update_bloc_base_state.dart';
import '/shared_customization/data/screen_value.dart';

part 'supply_state.dart';

part 'supply_cubit.freezed.dart';

class SupplyCubit extends Cubit<SupplyState>
    with UpdateBlocBaseState<SupplyState> {
  SupplyCubit() : super(const SupplyState.initial());

  final AppConfig _appConfig = AppConfig();

  void initData() async {
    emit(state.copyWith(status: ScreenValue.init()));
    await getSupplies();
    emit(state.copyWith(status: ScreenValue.running()));
  }

  Future<void> getSupplies() async {
    try {
      final query = meritBoxHelper.supplyBox // Query
          .query()
          .build();
      final List<SupplyEntity> listSupply = query.find();
      query.close();
      List<SupplyModel> supplies =
      listSupply.map((e) => e.toModel()).toList();
      emit(state.copyWith(
        supplies: supplies,
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
