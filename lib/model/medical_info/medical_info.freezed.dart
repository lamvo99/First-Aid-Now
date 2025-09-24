// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medical_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MedicalInfo _$MedicalInfoFromJson(Map<String, dynamic> json) {
  return _MedicalInfo.fromJson(json);
}

/// @nodoc
mixin _$MedicalInfo {
  BloodType get bloodType => throw _privateConstructorUsedError;
  List<String> get allergies => throw _privateConstructorUsedError;
  List<String> get medications => throw _privateConstructorUsedError;
  List<String> get medicalConditions => throw _privateConstructorUsedError;
  bool get organDonor => throw _privateConstructorUsedError;

  /// Serializes this MedicalInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MedicalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MedicalInfoCopyWith<MedicalInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalInfoCopyWith<$Res> {
  factory $MedicalInfoCopyWith(
          MedicalInfo value, $Res Function(MedicalInfo) then) =
      _$MedicalInfoCopyWithImpl<$Res, MedicalInfo>;
  @useResult
  $Res call(
      {BloodType bloodType,
      List<String> allergies,
      List<String> medications,
      List<String> medicalConditions,
      bool organDonor});
}

/// @nodoc
class _$MedicalInfoCopyWithImpl<$Res, $Val extends MedicalInfo>
    implements $MedicalInfoCopyWith<$Res> {
  _$MedicalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MedicalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodType = null,
    Object? allergies = null,
    Object? medications = null,
    Object? medicalConditions = null,
    Object? organDonor = null,
  }) {
    return _then(_value.copyWith(
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType,
      allergies: null == allergies
          ? _value.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medications: null == medications
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medicalConditions: null == medicalConditions
          ? _value.medicalConditions
          : medicalConditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      organDonor: null == organDonor
          ? _value.organDonor
          : organDonor // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MedicalInfoImplCopyWith<$Res>
    implements $MedicalInfoCopyWith<$Res> {
  factory _$$MedicalInfoImplCopyWith(
          _$MedicalInfoImpl value, $Res Function(_$MedicalInfoImpl) then) =
      __$$MedicalInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BloodType bloodType,
      List<String> allergies,
      List<String> medications,
      List<String> medicalConditions,
      bool organDonor});
}

/// @nodoc
class __$$MedicalInfoImplCopyWithImpl<$Res>
    extends _$MedicalInfoCopyWithImpl<$Res, _$MedicalInfoImpl>
    implements _$$MedicalInfoImplCopyWith<$Res> {
  __$$MedicalInfoImplCopyWithImpl(
      _$MedicalInfoImpl _value, $Res Function(_$MedicalInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MedicalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bloodType = null,
    Object? allergies = null,
    Object? medications = null,
    Object? medicalConditions = null,
    Object? organDonor = null,
  }) {
    return _then(_$MedicalInfoImpl(
      bloodType: null == bloodType
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType,
      allergies: null == allergies
          ? _value._allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medications: null == medications
          ? _value._medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      medicalConditions: null == medicalConditions
          ? _value._medicalConditions
          : medicalConditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      organDonor: null == organDonor
          ? _value.organDonor
          : organDonor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MedicalInfoImpl implements _MedicalInfo {
  const _$MedicalInfoImpl(
      {this.bloodType = BloodType.A_POSITIVE,
      final List<String> allergies = const [],
      final List<String> medications = const [],
      final List<String> medicalConditions = const [],
      this.organDonor = false})
      : _allergies = allergies,
        _medications = medications,
        _medicalConditions = medicalConditions;

  factory _$MedicalInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MedicalInfoImplFromJson(json);

  @override
  @JsonKey()
  final BloodType bloodType;
  final List<String> _allergies;
  @override
  @JsonKey()
  List<String> get allergies {
    if (_allergies is EqualUnmodifiableListView) return _allergies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergies);
  }

  final List<String> _medications;
  @override
  @JsonKey()
  List<String> get medications {
    if (_medications is EqualUnmodifiableListView) return _medications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medications);
  }

  final List<String> _medicalConditions;
  @override
  @JsonKey()
  List<String> get medicalConditions {
    if (_medicalConditions is EqualUnmodifiableListView)
      return _medicalConditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_medicalConditions);
  }

  @override
  @JsonKey()
  final bool organDonor;

  @override
  String toString() {
    return 'MedicalInfo(bloodType: $bloodType, allergies: $allergies, medications: $medications, medicalConditions: $medicalConditions, organDonor: $organDonor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MedicalInfoImpl &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            const DeepCollectionEquality()
                .equals(other._allergies, _allergies) &&
            const DeepCollectionEquality()
                .equals(other._medications, _medications) &&
            const DeepCollectionEquality()
                .equals(other._medicalConditions, _medicalConditions) &&
            (identical(other.organDonor, organDonor) ||
                other.organDonor == organDonor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bloodType,
      const DeepCollectionEquality().hash(_allergies),
      const DeepCollectionEquality().hash(_medications),
      const DeepCollectionEquality().hash(_medicalConditions),
      organDonor);

  /// Create a copy of MedicalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MedicalInfoImplCopyWith<_$MedicalInfoImpl> get copyWith =>
      __$$MedicalInfoImplCopyWithImpl<_$MedicalInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MedicalInfoImplToJson(
      this,
    );
  }
}

abstract class _MedicalInfo implements MedicalInfo {
  const factory _MedicalInfo(
      {final BloodType bloodType,
      final List<String> allergies,
      final List<String> medications,
      final List<String> medicalConditions,
      final bool organDonor}) = _$MedicalInfoImpl;

  factory _MedicalInfo.fromJson(Map<String, dynamic> json) =
      _$MedicalInfoImpl.fromJson;

  @override
  BloodType get bloodType;
  @override
  List<String> get allergies;
  @override
  List<String> get medications;
  @override
  List<String> get medicalConditions;
  @override
  bool get organDonor;

  /// Create a copy of MedicalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MedicalInfoImplCopyWith<_$MedicalInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
