part of 'merit_journal_cubit.dart';

@freezed
class MeritJournalState with _$MeritJournalState, BlocBaseState {
  const factory MeritJournalState.initial({
    String? errorMessage,
    ScreenValue? status,
    @Default([]) List<MeritModel> meritList,
  }) = _Initial;
}
