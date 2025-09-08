part of 'wooden_fish_cubit.dart';

@freezed
class WoodenFishState with _$WoodenFishState, BlocBaseState {
  const factory WoodenFishState.initial({
    String? errorMessage,
    ScreenValue? status,
    Audio? moBonk,
    Audio? bell,
    @Default([]) List< Audio> listBell,
    @Default([]) List< Audio> listBonk,
    @Default(false) bool isMoOne,
    @Default(false) bool isAuto,
    @Default(true) bool isBgOne,
    @Default(0) int count,
  }) = _Initial;
}
