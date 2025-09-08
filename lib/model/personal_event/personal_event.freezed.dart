// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonalEvent _$PersonalEventFromJson(Map<String, dynamic> json) {
  return _PersonalEvent.fromJson(json);
}

/// @nodoc
mixin _$PersonalEvent {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "event_name")
  String? get eventName => throw _privateConstructorUsedError;
  @JsonKey(name: "note")
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: "eventType")
  PersonalEventType? get eventType => throw _privateConstructorUsedError;
  @JsonKey(name: "date_type")
  DateType? get dateType => throw _privateConstructorUsedError;
  @JsonKey(name: "date_time")
  DateTime? get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: "repeat")
  bool? get isRepeat => throw _privateConstructorUsedError;
  @JsonKey(name: "is_reminder")
  bool? get isReminder => throw _privateConstructorUsedError;
  @JsonKey(name: "advance_days", defaultValue: 3)
  int? get advanceDays => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_time_hour", defaultValue: 8)
  int? get hour => throw _privateConstructorUsedError;
  @JsonKey(name: "notification_time_minute", defaultValue: 0)
  int? get minute => throw _privateConstructorUsedError;

  /// Serializes this PersonalEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalEventCopyWith<PersonalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalEventCopyWith<$Res> {
  factory $PersonalEventCopyWith(
          PersonalEvent value, $Res Function(PersonalEvent) then) =
      _$PersonalEventCopyWithImpl<$Res, PersonalEvent>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "event_name") String? eventName,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "eventType") PersonalEventType? eventType,
      @JsonKey(name: "date_type") DateType? dateType,
      @JsonKey(name: "date_time") DateTime? dateTime,
      @JsonKey(name: "repeat") bool? isRepeat,
      @JsonKey(name: "is_reminder") bool? isReminder,
      @JsonKey(name: "advance_days", defaultValue: 3) int? advanceDays,
      @JsonKey(name: "notification_time_hour", defaultValue: 8) int? hour,
      @JsonKey(name: "notification_time_minute", defaultValue: 0) int? minute});
}

/// @nodoc
class _$PersonalEventCopyWithImpl<$Res, $Val extends PersonalEvent>
    implements $PersonalEventCopyWith<$Res> {
  _$PersonalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventName = freezed,
    Object? note = freezed,
    Object? eventType = freezed,
    Object? dateType = freezed,
    Object? dateTime = freezed,
    Object? isRepeat = freezed,
    Object? isReminder = freezed,
    Object? advanceDays = freezed,
    Object? hour = freezed,
    Object? minute = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as PersonalEventType?,
      dateType: freezed == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as DateType?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRepeat: freezed == isRepeat
          ? _value.isRepeat
          : isRepeat // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReminder: freezed == isReminder
          ? _value.isReminder
          : isReminder // ignore: cast_nullable_to_non_nullable
              as bool?,
      advanceDays: freezed == advanceDays
          ? _value.advanceDays
          : advanceDays // ignore: cast_nullable_to_non_nullable
              as int?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minute: freezed == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalEventImplCopyWith<$Res>
    implements $PersonalEventCopyWith<$Res> {
  factory _$$PersonalEventImplCopyWith(
          _$PersonalEventImpl value, $Res Function(_$PersonalEventImpl) then) =
      __$$PersonalEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "event_name") String? eventName,
      @JsonKey(name: "note") String? note,
      @JsonKey(name: "eventType") PersonalEventType? eventType,
      @JsonKey(name: "date_type") DateType? dateType,
      @JsonKey(name: "date_time") DateTime? dateTime,
      @JsonKey(name: "repeat") bool? isRepeat,
      @JsonKey(name: "is_reminder") bool? isReminder,
      @JsonKey(name: "advance_days", defaultValue: 3) int? advanceDays,
      @JsonKey(name: "notification_time_hour", defaultValue: 8) int? hour,
      @JsonKey(name: "notification_time_minute", defaultValue: 0) int? minute});
}

/// @nodoc
class __$$PersonalEventImplCopyWithImpl<$Res>
    extends _$PersonalEventCopyWithImpl<$Res, _$PersonalEventImpl>
    implements _$$PersonalEventImplCopyWith<$Res> {
  __$$PersonalEventImplCopyWithImpl(
      _$PersonalEventImpl _value, $Res Function(_$PersonalEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? eventName = freezed,
    Object? note = freezed,
    Object? eventType = freezed,
    Object? dateType = freezed,
    Object? dateTime = freezed,
    Object? isRepeat = freezed,
    Object? isReminder = freezed,
    Object? advanceDays = freezed,
    Object? hour = freezed,
    Object? minute = freezed,
  }) {
    return _then(_$PersonalEventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventName: freezed == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      eventType: freezed == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as PersonalEventType?,
      dateType: freezed == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as DateType?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRepeat: freezed == isRepeat
          ? _value.isRepeat
          : isRepeat // ignore: cast_nullable_to_non_nullable
              as bool?,
      isReminder: freezed == isReminder
          ? _value.isReminder
          : isReminder // ignore: cast_nullable_to_non_nullable
              as bool?,
      advanceDays: freezed == advanceDays
          ? _value.advanceDays
          : advanceDays // ignore: cast_nullable_to_non_nullable
              as int?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int?,
      minute: freezed == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalEventImpl implements _PersonalEvent {
  const _$PersonalEventImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "event_name") this.eventName,
      @JsonKey(name: "note") this.note,
      @JsonKey(name: "eventType") this.eventType,
      @JsonKey(name: "date_type") this.dateType,
      @JsonKey(name: "date_time") this.dateTime,
      @JsonKey(name: "repeat") this.isRepeat,
      @JsonKey(name: "is_reminder") this.isReminder,
      @JsonKey(name: "advance_days", defaultValue: 3) this.advanceDays,
      @JsonKey(name: "notification_time_hour", defaultValue: 8) this.hour,
      @JsonKey(name: "notification_time_minute", defaultValue: 0) this.minute});

  factory _$PersonalEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalEventImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "event_name")
  final String? eventName;
  @override
  @JsonKey(name: "note")
  final String? note;
  @override
  @JsonKey(name: "eventType")
  final PersonalEventType? eventType;
  @override
  @JsonKey(name: "date_type")
  final DateType? dateType;
  @override
  @JsonKey(name: "date_time")
  final DateTime? dateTime;
  @override
  @JsonKey(name: "repeat")
  final bool? isRepeat;
  @override
  @JsonKey(name: "is_reminder")
  final bool? isReminder;
  @override
  @JsonKey(name: "advance_days", defaultValue: 3)
  final int? advanceDays;
  @override
  @JsonKey(name: "notification_time_hour", defaultValue: 8)
  final int? hour;
  @override
  @JsonKey(name: "notification_time_minute", defaultValue: 0)
  final int? minute;

  @override
  String toString() {
    return 'PersonalEvent(id: $id, eventName: $eventName, note: $note, eventType: $eventType, dateType: $dateType, dateTime: $dateTime, isRepeat: $isRepeat, isReminder: $isReminder, advanceDays: $advanceDays, hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.dateType, dateType) ||
                other.dateType == dateType) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.isRepeat, isRepeat) ||
                other.isRepeat == isRepeat) &&
            (identical(other.isReminder, isReminder) ||
                other.isReminder == isReminder) &&
            (identical(other.advanceDays, advanceDays) ||
                other.advanceDays == advanceDays) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, eventName, note, eventType,
      dateType, dateTime, isRepeat, isReminder, advanceDays, hour, minute);

  /// Create a copy of PersonalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalEventImplCopyWith<_$PersonalEventImpl> get copyWith =>
      __$$PersonalEventImplCopyWithImpl<_$PersonalEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalEventImplToJson(
      this,
    );
  }
}

abstract class _PersonalEvent implements PersonalEvent {
  const factory _PersonalEvent(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "event_name") final String? eventName,
      @JsonKey(name: "note") final String? note,
      @JsonKey(name: "eventType") final PersonalEventType? eventType,
      @JsonKey(name: "date_type") final DateType? dateType,
      @JsonKey(name: "date_time") final DateTime? dateTime,
      @JsonKey(name: "repeat") final bool? isRepeat,
      @JsonKey(name: "is_reminder") final bool? isReminder,
      @JsonKey(name: "advance_days", defaultValue: 3) final int? advanceDays,
      @JsonKey(name: "notification_time_hour", defaultValue: 8) final int? hour,
      @JsonKey(name: "notification_time_minute", defaultValue: 0)
      final int? minute}) = _$PersonalEventImpl;

  factory _PersonalEvent.fromJson(Map<String, dynamic> json) =
      _$PersonalEventImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "event_name")
  String? get eventName;
  @override
  @JsonKey(name: "note")
  String? get note;
  @override
  @JsonKey(name: "eventType")
  PersonalEventType? get eventType;
  @override
  @JsonKey(name: "date_type")
  DateType? get dateType;
  @override
  @JsonKey(name: "date_time")
  DateTime? get dateTime;
  @override
  @JsonKey(name: "repeat")
  bool? get isRepeat;
  @override
  @JsonKey(name: "is_reminder")
  bool? get isReminder;
  @override
  @JsonKey(name: "advance_days", defaultValue: 3)
  int? get advanceDays;
  @override
  @JsonKey(name: "notification_time_hour", defaultValue: 8)
  int? get hour;
  @override
  @JsonKey(name: "notification_time_minute", defaultValue: 0)
  int? get minute;

  /// Create a copy of PersonalEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalEventImplCopyWith<_$PersonalEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
