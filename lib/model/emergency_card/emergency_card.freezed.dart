// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmergencyCard _$EmergencyCardFromJson(Map<String, dynamic> json) {
  return _EmergencyCard.fromJson(json);
}

/// @nodoc
mixin _$EmergencyCard {
  String? get id => throw _privateConstructorUsedError;
  Owner? get owner => throw _privateConstructorUsedError;
  MedicalInfo? get medicalInfo => throw _privateConstructorUsedError;
  List<EmergencyContact> get emergencyContacts =>
      throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  int? get lastUpdated => throw _privateConstructorUsedError;
  VisibilityInfo? get visibility => throw _privateConstructorUsedError;

  /// Serializes this EmergencyCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmergencyCardCopyWith<EmergencyCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyCardCopyWith<$Res> {
  factory $EmergencyCardCopyWith(
          EmergencyCard value, $Res Function(EmergencyCard) then) =
      _$EmergencyCardCopyWithImpl<$Res, EmergencyCard>;
  @useResult
  $Res call(
      {String? id,
      Owner? owner,
      MedicalInfo? medicalInfo,
      List<EmergencyContact> emergencyContacts,
      String? instructions,
      int? lastUpdated,
      VisibilityInfo? visibility});

  $OwnerCopyWith<$Res>? get owner;
  $MedicalInfoCopyWith<$Res>? get medicalInfo;
  $VisibilityInfoCopyWith<$Res>? get visibility;
}

/// @nodoc
class _$EmergencyCardCopyWithImpl<$Res, $Val extends EmergencyCard>
    implements $EmergencyCardCopyWith<$Res> {
  _$EmergencyCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? medicalInfo = freezed,
    Object? emergencyContacts = null,
    Object? instructions = freezed,
    Object? lastUpdated = freezed,
    Object? visibility = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      medicalInfo: freezed == medicalInfo
          ? _value.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfo?,
      emergencyContacts: null == emergencyContacts
          ? _value.emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityInfo?,
    ) as $Val);
  }

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicalInfoCopyWith<$Res>? get medicalInfo {
    if (_value.medicalInfo == null) {
      return null;
    }

    return $MedicalInfoCopyWith<$Res>(_value.medicalInfo!, (value) {
      return _then(_value.copyWith(medicalInfo: value) as $Val);
    });
  }

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisibilityInfoCopyWith<$Res>? get visibility {
    if (_value.visibility == null) {
      return null;
    }

    return $VisibilityInfoCopyWith<$Res>(_value.visibility!, (value) {
      return _then(_value.copyWith(visibility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EmergencyCardImplCopyWith<$Res>
    implements $EmergencyCardCopyWith<$Res> {
  factory _$$EmergencyCardImplCopyWith(
          _$EmergencyCardImpl value, $Res Function(_$EmergencyCardImpl) then) =
      __$$EmergencyCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Owner? owner,
      MedicalInfo? medicalInfo,
      List<EmergencyContact> emergencyContacts,
      String? instructions,
      int? lastUpdated,
      VisibilityInfo? visibility});

  @override
  $OwnerCopyWith<$Res>? get owner;
  @override
  $MedicalInfoCopyWith<$Res>? get medicalInfo;
  @override
  $VisibilityInfoCopyWith<$Res>? get visibility;
}

/// @nodoc
class __$$EmergencyCardImplCopyWithImpl<$Res>
    extends _$EmergencyCardCopyWithImpl<$Res, _$EmergencyCardImpl>
    implements _$$EmergencyCardImplCopyWith<$Res> {
  __$$EmergencyCardImplCopyWithImpl(
      _$EmergencyCardImpl _value, $Res Function(_$EmergencyCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? owner = freezed,
    Object? medicalInfo = freezed,
    Object? emergencyContacts = null,
    Object? instructions = freezed,
    Object? lastUpdated = freezed,
    Object? visibility = freezed,
  }) {
    return _then(_$EmergencyCardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner?,
      medicalInfo: freezed == medicalInfo
          ? _value.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfo?,
      emergencyContacts: null == emergencyContacts
          ? _value._emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as int?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmergencyCardImpl implements _EmergencyCard {
  const _$EmergencyCardImpl(
      {this.id,
      this.owner,
      this.medicalInfo,
      final List<EmergencyContact> emergencyContacts = const [],
      this.instructions,
      this.lastUpdated,
      this.visibility})
      : _emergencyContacts = emergencyContacts;

  factory _$EmergencyCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmergencyCardImplFromJson(json);

  @override
  final String? id;
  @override
  final Owner? owner;
  @override
  final MedicalInfo? medicalInfo;
  final List<EmergencyContact> _emergencyContacts;
  @override
  @JsonKey()
  List<EmergencyContact> get emergencyContacts {
    if (_emergencyContacts is EqualUnmodifiableListView)
      return _emergencyContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emergencyContacts);
  }

  @override
  final String? instructions;
  @override
  final int? lastUpdated;
  @override
  final VisibilityInfo? visibility;

  @override
  String toString() {
    return 'EmergencyCard(id: $id, owner: $owner, medicalInfo: $medicalInfo, emergencyContacts: $emergencyContacts, instructions: $instructions, lastUpdated: $lastUpdated, visibility: $visibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmergencyCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.medicalInfo, medicalInfo) ||
                other.medicalInfo == medicalInfo) &&
            const DeepCollectionEquality()
                .equals(other._emergencyContacts, _emergencyContacts) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      owner,
      medicalInfo,
      const DeepCollectionEquality().hash(_emergencyContacts),
      instructions,
      lastUpdated,
      visibility);

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmergencyCardImplCopyWith<_$EmergencyCardImpl> get copyWith =>
      __$$EmergencyCardImplCopyWithImpl<_$EmergencyCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmergencyCardImplToJson(
      this,
    );
  }
}

abstract class _EmergencyCard implements EmergencyCard {
  const factory _EmergencyCard(
      {final String? id,
      final Owner? owner,
      final MedicalInfo? medicalInfo,
      final List<EmergencyContact> emergencyContacts,
      final String? instructions,
      final int? lastUpdated,
      final VisibilityInfo? visibility}) = _$EmergencyCardImpl;

  factory _EmergencyCard.fromJson(Map<String, dynamic> json) =
      _$EmergencyCardImpl.fromJson;

  @override
  String? get id;
  @override
  Owner? get owner;
  @override
  MedicalInfo? get medicalInfo;
  @override
  List<EmergencyContact> get emergencyContacts;
  @override
  String? get instructions;
  @override
  int? get lastUpdated;
  @override
  VisibilityInfo? get visibility;

  /// Create a copy of EmergencyCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmergencyCardImplCopyWith<_$EmergencyCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
