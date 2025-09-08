// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmergencyNumber _$EmergencyNumberFromJson(Map<String, dynamic> json) {
  return _EmergencyNumber.fromJson(json);
}

/// @nodoc
mixin _$EmergencyNumber {
  String? get police => throw _privateConstructorUsedError;
  String? get fire => throw _privateConstructorUsedError;
  String? get ambulance => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  /// Serializes this EmergencyNumber to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmergencyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmergencyNumberCopyWith<EmergencyNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyNumberCopyWith<$Res> {
  factory $EmergencyNumberCopyWith(
          EmergencyNumber value, $Res Function(EmergencyNumber) then) =
      _$EmergencyNumberCopyWithImpl<$Res, EmergencyNumber>;
  @useResult
  $Res call(
      {String? police,
      String? fire,
      String? ambulance,
      String? locale,
      String? country});
}

/// @nodoc
class _$EmergencyNumberCopyWithImpl<$Res, $Val extends EmergencyNumber>
    implements $EmergencyNumberCopyWith<$Res> {
  _$EmergencyNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmergencyNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? police = freezed,
    Object? fire = freezed,
    Object? ambulance = freezed,
    Object? locale = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      police: freezed == police
          ? _value.police
          : police // ignore: cast_nullable_to_non_nullable
              as String?,
      fire: freezed == fire
          ? _value.fire
          : fire // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulance: freezed == ambulance
          ? _value.ambulance
          : ambulance // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmergencyNumberImplCopyWith<$Res>
    implements $EmergencyNumberCopyWith<$Res> {
  factory _$$EmergencyNumberImplCopyWith(_$EmergencyNumberImpl value,
          $Res Function(_$EmergencyNumberImpl) then) =
      __$$EmergencyNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? police,
      String? fire,
      String? ambulance,
      String? locale,
      String? country});
}

/// @nodoc
class __$$EmergencyNumberImplCopyWithImpl<$Res>
    extends _$EmergencyNumberCopyWithImpl<$Res, _$EmergencyNumberImpl>
    implements _$$EmergencyNumberImplCopyWith<$Res> {
  __$$EmergencyNumberImplCopyWithImpl(
      _$EmergencyNumberImpl _value, $Res Function(_$EmergencyNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmergencyNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? police = freezed,
    Object? fire = freezed,
    Object? ambulance = freezed,
    Object? locale = freezed,
    Object? country = freezed,
  }) {
    return _then(_$EmergencyNumberImpl(
      police: freezed == police
          ? _value.police
          : police // ignore: cast_nullable_to_non_nullable
              as String?,
      fire: freezed == fire
          ? _value.fire
          : fire // ignore: cast_nullable_to_non_nullable
              as String?,
      ambulance: freezed == ambulance
          ? _value.ambulance
          : ambulance // ignore: cast_nullable_to_non_nullable
              as String?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergencyNumberImpl implements _EmergencyNumber {
  const _$EmergencyNumberImpl(
      {this.police, this.fire, this.ambulance, this.locale, this.country});

  factory _$EmergencyNumberImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergencyNumberImplFromJson(json);

  @override
  final String? police;
  @override
  final String? fire;
  @override
  final String? ambulance;
  @override
  final String? locale;
  @override
  final String? country;

  @override
  String toString() {
    return 'EmergencyNumber(police: $police, fire: $fire, ambulance: $ambulance, locale: $locale, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyNumberImpl &&
            (identical(other.police, police) || other.police == police) &&
            (identical(other.fire, fire) || other.fire == fire) &&
            (identical(other.ambulance, ambulance) ||
                other.ambulance == ambulance) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, police, fire, ambulance, locale, country);

  /// Create a copy of EmergencyNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyNumberImplCopyWith<_$EmergencyNumberImpl> get copyWith =>
      __$$EmergencyNumberImplCopyWithImpl<_$EmergencyNumberImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergencyNumberImplToJson(
      this,
    );
  }
}

abstract class _EmergencyNumber implements EmergencyNumber {
  const factory _EmergencyNumber(
      {final String? police,
      final String? fire,
      final String? ambulance,
      final String? locale,
      final String? country}) = _$EmergencyNumberImpl;

  factory _EmergencyNumber.fromJson(Map<String, dynamic> json) =
      _$EmergencyNumberImpl.fromJson;

  @override
  String? get police;
  @override
  String? get fire;
  @override
  String? get ambulance;
  @override
  String? get locale;
  @override
  String? get country;

  /// Create a copy of EmergencyNumber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmergencyNumberImplCopyWith<_$EmergencyNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
