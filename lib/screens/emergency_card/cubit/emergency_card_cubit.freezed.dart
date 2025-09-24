// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emergency_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmergencyCardState {
  EmergencyCard? get emergencyCard => throw _privateConstructorUsedError;

  ///
  /// EDIT INFO
  ///
  bool get isEditInfo => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  MedicalInfo get medicalInfo => throw _privateConstructorUsedError;
  List<EmergencyContact> get emergencyContacts =>
      throw _privateConstructorUsedError;
  String get instructions => throw _privateConstructorUsedError;
  VisibilityInfo get visibility => throw _privateConstructorUsedError;
  ScreenValue? get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmergencyCardStateCopyWith<EmergencyCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmergencyCardStateCopyWith<$Res> {
  factory $EmergencyCardStateCopyWith(
          EmergencyCardState value, $Res Function(EmergencyCardState) then) =
      _$EmergencyCardStateCopyWithImpl<$Res, EmergencyCardState>;
  @useResult
  $Res call(
      {EmergencyCard? emergencyCard,
      bool isEditInfo,
      Owner owner,
      MedicalInfo medicalInfo,
      List<EmergencyContact> emergencyContacts,
      String instructions,
      VisibilityInfo visibility,
      ScreenValue? status,
      String? errorMessage});

  $EmergencyCardCopyWith<$Res>? get emergencyCard;
  $OwnerCopyWith<$Res> get owner;
  $MedicalInfoCopyWith<$Res> get medicalInfo;
  $VisibilityInfoCopyWith<$Res> get visibility;
}

/// @nodoc
class _$EmergencyCardStateCopyWithImpl<$Res, $Val extends EmergencyCardState>
    implements $EmergencyCardStateCopyWith<$Res> {
  _$EmergencyCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emergencyCard = freezed,
    Object? isEditInfo = null,
    Object? owner = null,
    Object? medicalInfo = null,
    Object? emergencyContacts = null,
    Object? instructions = null,
    Object? visibility = null,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      emergencyCard: freezed == emergencyCard
          ? _value.emergencyCard
          : emergencyCard // ignore: cast_nullable_to_non_nullable
              as EmergencyCard?,
      isEditInfo: null == isEditInfo
          ? _value.isEditInfo
          : isEditInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      medicalInfo: null == medicalInfo
          ? _value.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfo,
      emergencyContacts: null == emergencyContacts
          ? _value.emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityInfo,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenValue?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmergencyCardCopyWith<$Res>? get emergencyCard {
    if (_value.emergencyCard == null) {
      return null;
    }

    return $EmergencyCardCopyWith<$Res>(_value.emergencyCard!, (value) {
      return _then(_value.copyWith(emergencyCard: value) as $Val);
    });
  }

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MedicalInfoCopyWith<$Res> get medicalInfo {
    return $MedicalInfoCopyWith<$Res>(_value.medicalInfo, (value) {
      return _then(_value.copyWith(medicalInfo: value) as $Val);
    });
  }

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisibilityInfoCopyWith<$Res> get visibility {
    return $VisibilityInfoCopyWith<$Res>(_value.visibility, (value) {
      return _then(_value.copyWith(visibility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EmergencyCardStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmergencyCard? emergencyCard,
      bool isEditInfo,
      Owner owner,
      MedicalInfo medicalInfo,
      List<EmergencyContact> emergencyContacts,
      String instructions,
      VisibilityInfo visibility,
      ScreenValue? status,
      String? errorMessage});

  @override
  $EmergencyCardCopyWith<$Res>? get emergencyCard;
  @override
  $OwnerCopyWith<$Res> get owner;
  @override
  $MedicalInfoCopyWith<$Res> get medicalInfo;
  @override
  $VisibilityInfoCopyWith<$Res> get visibility;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EmergencyCardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emergencyCard = freezed,
    Object? isEditInfo = null,
    Object? owner = null,
    Object? medicalInfo = null,
    Object? emergencyContacts = null,
    Object? instructions = null,
    Object? visibility = null,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      emergencyCard: freezed == emergencyCard
          ? _value.emergencyCard
          : emergencyCard // ignore: cast_nullable_to_non_nullable
              as EmergencyCard?,
      isEditInfo: null == isEditInfo
          ? _value.isEditInfo
          : isEditInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      medicalInfo: null == medicalInfo
          ? _value.medicalInfo
          : medicalInfo // ignore: cast_nullable_to_non_nullable
              as MedicalInfo,
      emergencyContacts: null == emergencyContacts
          ? _value._emergencyContacts
          : emergencyContacts // ignore: cast_nullable_to_non_nullable
              as List<EmergencyContact>,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityInfo,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenValue?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {this.emergencyCard,
      this.isEditInfo = false,
      this.owner = const Owner(),
      this.medicalInfo = const MedicalInfo(),
      final List<EmergencyContact> emergencyContacts = const [],
      this.instructions = '',
      this.visibility = const VisibilityInfo(),
      this.status,
      this.errorMessage})
      : _emergencyContacts = emergencyContacts;

  @override
  final EmergencyCard? emergencyCard;

  ///
  /// EDIT INFO
  ///
  @override
  @JsonKey()
  final bool isEditInfo;
  @override
  @JsonKey()
  final Owner owner;
  @override
  @JsonKey()
  final MedicalInfo medicalInfo;
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
  @JsonKey()
  final String instructions;
  @override
  @JsonKey()
  final VisibilityInfo visibility;
  @override
  final ScreenValue? status;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmergencyCardState(emergencyCard: $emergencyCard, isEditInfo: $isEditInfo, owner: $owner, medicalInfo: $medicalInfo, emergencyContacts: $emergencyContacts, instructions: $instructions, visibility: $visibility, status: $status, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmergencyCardState'))
      ..add(DiagnosticsProperty('emergencyCard', emergencyCard))
      ..add(DiagnosticsProperty('isEditInfo', isEditInfo))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('medicalInfo', medicalInfo))
      ..add(DiagnosticsProperty('emergencyContacts', emergencyContacts))
      ..add(DiagnosticsProperty('instructions', instructions))
      ..add(DiagnosticsProperty('visibility', visibility))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.emergencyCard, emergencyCard) ||
                other.emergencyCard == emergencyCard) &&
            (identical(other.isEditInfo, isEditInfo) ||
                other.isEditInfo == isEditInfo) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.medicalInfo, medicalInfo) ||
                other.medicalInfo == medicalInfo) &&
            const DeepCollectionEquality()
                .equals(other._emergencyContacts, _emergencyContacts) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emergencyCard,
      isEditInfo,
      owner,
      medicalInfo,
      const DeepCollectionEquality().hash(_emergencyContacts),
      instructions,
      visibility,
      status,
      errorMessage);

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EmergencyCardState {
  const factory _Initial(
      {final EmergencyCard? emergencyCard,
      final bool isEditInfo,
      final Owner owner,
      final MedicalInfo medicalInfo,
      final List<EmergencyContact> emergencyContacts,
      final String instructions,
      final VisibilityInfo visibility,
      final ScreenValue? status,
      final String? errorMessage}) = _$InitialImpl;

  @override
  EmergencyCard? get emergencyCard;

  ///
  /// EDIT INFO
  ///
  @override
  bool get isEditInfo;
  @override
  Owner get owner;
  @override
  MedicalInfo get medicalInfo;
  @override
  List<EmergencyContact> get emergencyContacts;
  @override
  String get instructions;
  @override
  VisibilityInfo get visibility;
  @override
  ScreenValue? get status;
  @override
  String? get errorMessage;

  /// Create a copy of EmergencyCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
