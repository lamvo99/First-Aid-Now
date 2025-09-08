// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:first_aid/app_common_data/enum/date_type.dart';
import 'package:first_aid/app_common_data/enum/personal_event_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_event.g.dart';
part 'personal_event.freezed.dart';

@freezed
class PersonalEvent with _$PersonalEvent {
  const factory PersonalEvent({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "event_name") String? eventName,
    @JsonKey(name: "note") String? note,
    @JsonKey(name: "eventType") PersonalEventType? eventType,
    @JsonKey(name: "date_type") DateType? dateType,
    @JsonKey(name: "date_time") DateTime? dateTime,
    @JsonKey(name: "repeat") bool? isRepeat,
    @JsonKey(name: "is_reminder") bool? isReminder,
    @JsonKey(name: "advance_days", defaultValue: 3) int? advanceDays,
    @JsonKey(name: "notification_time_hour", defaultValue: 8) int? hour,
    @JsonKey(name: "notification_time_minute", defaultValue: 0) int? minute,
  }) = _PersonalEvent;

  static PersonalEvent get empty => const PersonalEvent();

  factory PersonalEvent.fromJson(Map<String, dynamic> json) =>
      _$PersonalEventFromJson(json);
}
