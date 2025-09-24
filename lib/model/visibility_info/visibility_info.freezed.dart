// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visibility_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisibilityInfo _$VisibilityInfoFromJson(Map<String, dynamic> json) {
  return _VisibilityInfo.fromJson(json);
}

/// @nodoc
mixin _$VisibilityInfo {
  bool get bloodType => throw _privateConstructorUsedError;
  bool get allergies => throw _privateConstructorUsedError;
  bool get conditions => throw _privateConstructorUsedError;
  bool get medications => throw _privateConstructorUsedError;
  bool get organDonor => throw _privateConstructorUsedError;
  bool get emergencyContacts => throw _privateConstructorUsedError;

  /// Serializes this VisibilityInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisibilityInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisibilityInfoCopyWith<VisibilityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibilityInfoCopyWith<$Res> {
  factory $VisibilityInfoCopyWith(
          VisibilityInfo value, $Res Function(VisibilityInfo) then) =
      _$VisibilityInfoCopyWithImpl<$Res, VisibilityInfo>;
  @useResult
  $Res call(
      {bool bloodType,
      bool allergies,
      bool conditions,
      bool medications,
      bool organDonor,
      bool emergencyContacts});
}

/// @nodoc
class _$VisibilityInfoCopyWithImpl<$Res, $Val extends VisibilityInfo>
    implements $VisibilityInfoCopyWith<$Res> {
  _$VisibilityInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisibilityInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodType = null,
    Object? allergies = null,
    Object? conditions = null,
    Object? medications = null,
    Object? organDonor = null,
    Object? emergencyContacts = null,
  }) {
    return _then(_value.copyWith(
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as bool,
      allergies: null == allergies
          ? _value.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as bool,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as bool,
      medications: null == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as bool,
      organDonor: null == organDonor
          ? _value.organDonor
          : organDonor // ignore: cast_nullable_to_non_nullable
              as bool,
      emergencyContacts: null == emergencyContacts
          ? _value.emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisibilityInfoImplCopyWith<$Res>
    implements $VisibilityInfoCopyWith<$Res> {
  factory _$$VisibilityInfoImplCopyWith(_$VisibilityInfoImpl value,
          $Res Function(_$VisibilityInfoImpl) then) =
      __$$VisibilityInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool bloodType,
      bool allergies,
      bool conditions,
      bool medications,
      bool organDonor,
      bool emergencyContacts});
}

/// @nodoc
class __$$VisibilityInfoImplCopyWithImpl<$Res>
    extends _$VisibilityInfoCopyWithImpl<$Res, _$VisibilityInfoImpl>
    implements _$$VisibilityInfoImplCopyWith<$Res> {
  __$$VisibilityInfoImplCopyWithImpl(
      _$VisibilityInfoImpl _value, $Res Function(_$VisibilityInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodType = null,
    Object? allergies = null,
    Object? conditions = null,
    Object? medications = null,
    Object? organDonor = null,
    Object? emergencyContacts = null,
  }) {
    return _then(_$VisibilityInfoImpl(
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as bool,
      allergies: null == allergies
          ? _value.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as bool,
      conditions: null == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as bool,
      medications: null == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as bool,
      organDonor: null == organDonor
          ? _value.organDonor
          : organDonor // ignore: cast_nullable_to_non_nullable
              as bool,
      emergencyContacts: null == emergencyContacts
          ? _value.emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityInfoImpl implements _VisibilityInfo {
  const _$VisibilityInfoImpl(
      {this.bloodType = false,
      this.allergies = false,
      this.conditions = false,
      this.medications = false,
      this.organDonor = false,
      this.emergencyContacts = false});

  factory _$VisibilityInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityInfoImplFromJson(json);

  @override
  @JsonKey()
  final bool bloodType;
  @override
  @JsonKey()
  final bool allergies;
  @override
  @JsonKey()
  final bool conditions;
  @override
  @JsonKey()
  final bool medications;
  @override
  @JsonKey()
  final bool organDonor;
  @override
  @JsonKey()
  final bool emergencyContacts;

  @override
  String toString() {
    return 'VisibilityInfo(bloodType: $bloodType, allergies: $allergies, conditions: $conditions, medications: $medications, organDonor: $organDonor, emergencyContacts: $emergencyContacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityInfoImpl &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.allergies, allergies) ||
                other.allergies == allergies) &&
            (identical(other.conditions, conditions) ||
                other.conditions == conditions) &&
            (identical(other.medications, medications) ||
                other.medications == medications) &&
            (identical(other.organDonor, organDonor) ||
                other.organDonor == organDonor) &&
            (identical(other.emergencyContacts, emergencyContacts) ||
                other.emergencyContacts == emergencyContacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bloodType, allergies, conditions,
      medications, organDonor, emergencyContacts);

  /// Create a copy of VisibilityInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityInfoImplCopyWith<_$VisibilityInfoImpl> get copyWith =>
      __$$VisibilityInfoImplCopyWithImpl<_$VisibilityInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityInfoImplToJson(
      this,
    );
  }
}

abstract class _VisibilityInfo implements VisibilityInfo {
  const factory _VisibilityInfo(
      {final bool bloodType,
      final bool allergies,
      final bool conditions,
      final bool medications,
      final bool organDonor,
      final bool emergencyContacts}) = _$VisibilityInfoImpl;

  factory _VisibilityInfo.fromJson(Map<String, dynamic> json) =
      _$VisibilityInfoImpl.fromJson;

  @override
  bool get bloodType;
  @override
  bool get allergies;
  @override
  bool get conditions;
  @override
  bool get medications;
  @override
  bool get organDonor;
  @override
  bool get emergencyContacts;

  /// Create a copy of VisibilityInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityInfoImplCopyWith<_$VisibilityInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
