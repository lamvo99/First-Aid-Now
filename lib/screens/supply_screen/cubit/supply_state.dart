part of 'supply_cubit.dart';

@freezed
class SupplyState with _$SupplyState, BlocBaseState {
  const factory SupplyState.initial({
    String? errorMessage,
    ScreenValue? status,
    @Default([]) List<SupplyModel> supplies,
    @Default("") String search,
    @Default(SupplySort.DEFAULT) SupplySort supplySort,
    @Default(false) bool isSort,
  }) = _Initial;
}
