// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lunar_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LunarDate _$LunarDateFromJson(Map<String, dynamic> json) {
  return _LunarDate.fromJson(json);
}

/// @nodoc
mixin _$LunarDate {
  /// Ngày âm lịch (1-30)
  @JsonKey(name: "day")
  int? get day => throw _privateConstructorUsedError;

  /// Tháng âm lịch (1-12)
  @JsonKey(name: "month")
  int? get month => throw _privateConstructorUsedError;

  /// Năm âm lịch
  @JsonKey(name: "year")
  int? get year => throw _privateConstructorUsedError;

  /// Can chi của ngày (ví dụ: Giáp Tý)
  @JsonKey(name: "can_chi")
  String? get canChi => throw _privateConstructorUsedError;

  /// Có phải tháng nhuận không
  @JsonKey(name: "is_leap_month")
  bool? get isLeapMonth => throw _privateConstructorUsedError;

  /// Serializes this LunarDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LunarDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LunarDateCopyWith<LunarDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LunarDateCopyWith<$Res> {
  factory $LunarDateCopyWith(LunarDate value, $Res Function(LunarDate) then) =
      _$LunarDateCopyWithImpl<$Res, LunarDate>;
  @useResult
  $Res call(
      {@JsonKey(name: "day") int? day,
      @JsonKey(name: "month") int? month,
      @JsonKey(name: "year") int? year,
      @JsonKey(name: "can_chi") String? canChi,
      @JsonKey(name: "is_leap_month") bool? isLeapMonth});
}

/// @nodoc
class _$LunarDateCopyWithImpl<$Res, $Val extends LunarDate>
    implements $LunarDateCopyWith<$Res> {
  _$LunarDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LunarDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? canChi = freezed,
    Object? isLeapMonth = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      canChi: freezed == canChi
          ? _value.canChi
          : canChi // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeapMonth: freezed == isLeapMonth
          ? _value.isLeapMonth
          : isLeapMonth // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LunarDateImplCopyWith<$Res>
    implements $LunarDateCopyWith<$Res> {
  factory _$$LunarDateImplCopyWith(
          _$LunarDateImpl value, $Res Function(_$LunarDateImpl) then) =
      __$$LunarDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day") int? day,
      @JsonKey(name: "month") int? month,
      @JsonKey(name: "year") int? year,
      @JsonKey(name: "can_chi") String? canChi,
      @JsonKey(name: "is_leap_month") bool? isLeapMonth});
}

/// @nodoc
class __$$LunarDateImplCopyWithImpl<$Res>
    extends _$LunarDateCopyWithImpl<$Res, _$LunarDateImpl>
    implements _$$LunarDateImplCopyWith<$Res> {
  __$$LunarDateImplCopyWithImpl(
      _$LunarDateImpl _value, $Res Function(_$LunarDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LunarDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? canChi = freezed,
    Object? isLeapMonth = freezed,
  }) {
    return _then(_$LunarDateImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      canChi: freezed == canChi
          ? _value.canChi
          : canChi // ignore: cast_nullable_to_non_nullable
              as String?,
      isLeapMonth: freezed == isLeapMonth
          ? _value.isLeapMonth
          : isLeapMonth // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LunarDateImpl implements _LunarDate {
  const _$LunarDateImpl(
      {@JsonKey(name: "day") this.day,
      @JsonKey(name: "month") this.month,
      @JsonKey(name: "year") this.year,
      @JsonKey(name: "can_chi") this.canChi,
      @JsonKey(name: "is_leap_month") this.isLeapMonth});

  factory _$LunarDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LunarDateImplFromJson(json);

  /// Ngày âm lịch (1-30)
  @override
  @JsonKey(name: "day")
  final int? day;

  /// Tháng âm lịch (1-12)
  @override
  @JsonKey(name: "month")
  final int? month;

  /// Năm âm lịch
  @override
  @JsonKey(name: "year")
  final int? year;

  /// Can chi của ngày (ví dụ: Giáp Tý)
  @override
  @JsonKey(name: "can_chi")
  final String? canChi;

  /// Có phải tháng nhuận không
  @override
  @JsonKey(name: "is_leap_month")
  final bool? isLeapMonth;

  @override
  String toString() {
    return 'LunarDate(day: $day, month: $month, year: $year, canChi: $canChi, isLeapMonth: $isLeapMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LunarDateImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.canChi, canChi) || other.canChi == canChi) &&
            (identical(other.isLeapMonth, isLeapMonth) ||
                other.isLeapMonth == isLeapMonth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, day, month, year, canChi, isLeapMonth);

  /// Create a copy of LunarDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LunarDateImplCopyWith<_$LunarDateImpl> get copyWith =>
      __$$LunarDateImplCopyWithImpl<_$LunarDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LunarDateImplToJson(
      this,
    );
  }
}

abstract class _LunarDate implements LunarDate {
  const factory _LunarDate(
          {@JsonKey(name: "day") final int? day,
          @JsonKey(name: "month") final int? month,
          @JsonKey(name: "year") final int? year,
          @JsonKey(name: "can_chi") final String? canChi,
          @JsonKey(name: "is_leap_month") final bool? isLeapMonth}) =
      _$LunarDateImpl;

  factory _LunarDate.fromJson(Map<String, dynamic> json) =
      _$LunarDateImpl.fromJson;

  /// Ngày âm lịch (1-30)
  @override
  @JsonKey(name: "day")
  int? get day;

  /// Tháng âm lịch (1-12)
  @override
  @JsonKey(name: "month")
  int? get month;

  /// Năm âm lịch
  @override
  @JsonKey(name: "year")
  int? get year;

  /// Can chi của ngày (ví dụ: Giáp Tý)
  @override
  @JsonKey(name: "can_chi")
  String? get canChi;

  /// Có phải tháng nhuận không
  @override
  @JsonKey(name: "is_leap_month")
  bool? get isLeapMonth;

  /// Create a copy of LunarDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LunarDateImplCopyWith<_$LunarDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
