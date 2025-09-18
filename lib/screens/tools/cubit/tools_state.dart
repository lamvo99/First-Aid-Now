part of 'tools_cubit.dart';

@freezed
class ToolsState with _$ToolsState, BlocBaseState {
  const factory ToolsState.initial({
    String? errorMessage,
    ScreenValue? status,
  }) = _Initial;
}
