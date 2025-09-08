// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalEventImpl _$$PersonalEventImplFromJson(Map<String, dynamic> json) =>
    _$PersonalEventImpl(
      id: json['id'] as String?,
      eventName: json['event_name'] as String?,
      note: json['note'] as String?,
      eventType:
          $enumDecodeNullable(_$PersonalEventTypeEnumMap, json['eventType']),
      dateType: $enumDecodeNullable(_$DateTypeEnumMap, json['date_type']),
      dateTime: json['date_time'] == null
          ? null
          : DateTime.parse(json['date_time'] as String),
      isRepeat: json['repeat'] as bool?,
      isReminder: json['is_reminder'] as bool?,
      advanceDays: (json['advance_days'] as num?)?.toInt() ?? 3,
      hour: (json['notification_time_hour'] as num?)?.toInt() ?? 8,
      minute: (json['notification_time_minute'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PersonalEventImplToJson(_$PersonalEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_name': instance.eventName,
      'note': instance.note,
      'eventType': _$PersonalEventTypeEnumMap[instance.eventType],
      'date_type': _$DateTypeEnumMap[instance.dateType],
      'date_time': instance.dateTime?.toIso8601String(),
      'repeat': instance.isRepeat,
      'is_reminder': instance.isReminder,
      'advance_days': instance.advanceDays,
      'notification_time_hour': instance.hour,
      'notification_time_minute': instance.minute,
    };

const _$PersonalEventTypeEnumMap = {
  PersonalEventType.ANNIVERSARY: 'ANNIVERSARY',
  PersonalEventType.DHARMA_PRACTICE: 'DHARMA_PRACTICE',
  PersonalEventType.VOW_DAY: 'VOW_DAY',
  PersonalEventType.PRAYER_SESSION: 'PRAYER_SESSION',
  PersonalEventType.SUTRA_STUDY: 'SUTRA_STUDY',
  PersonalEventType.MEDITATION_DAY: 'MEDITATION_DAY',
  PersonalEventType.DANA_ACTIVITY: 'DANA_ACTIVITY',
  PersonalEventType.TEMPLE_VISIT: 'TEMPLE_VISIT',
  PersonalEventType.DHARMA_TALK: 'DHARMA_TALK',
  PersonalEventType.PERSONAL_REFLECTION: 'PERSONAL_REFLECTION',
  PersonalEventType.CUSTOM: 'CUSTOM',
};

const _$DateTypeEnumMap = {
  DateType.SOLAR: 'SOLAR',
  DateType.LUNAR: 'LUNAR',
};
