// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeritModel _$MeritModelFromJson(Map<String, dynamic> json) {
  return _MeritModel.fromJson(json);
}

/// @nodoc
mixin _$MeritModel {
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "merit_type")
  MeritType? get meritType => throw _privateConstructorUsedError;
  @JsonKey(name: "recipient")
  String? get recipient => throw _privateConstructorUsedError;

  /// Serializes this MeritModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeritModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeritModelCopyWith<MeritModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeritModelCopyWith<$Res> {
  factory $MeritModelCopyWith(
          MeritModel value, $Res Function(MeritModel) then) =
      _$MeritModelCopyWithImpl<$Res, MeritModel>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0)
      int id,
      String? name,
      String? description,
      @JsonKey(name: "created_at") int? createdAt,
      @JsonKey(name: "merit_type") MeritType? meritType,
      @JsonKey(name: "recipient") String? recipient});
}

/// @nodoc
class _$MeritModelCopyWithImpl<$Res, $Val extends MeritModel>
    implements $MeritModelCopyWith<$Res> {
  _$MeritModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeritModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? meritType = freezed,
    Object? recipient = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      meritType: freezed == meritType
          ? _value.meritType
          : meritType // ignore: cast_nullable_to_non_nullable
              as MeritType?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeritModelImplCopyWith<$Res>
    implements $MeritModelCopyWith<$Res> {
  factory _$$MeritModelImplCopyWith(
          _$MeritModelImpl value, $Res Function(_$MeritModelImpl) then) =
      __$$MeritModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0)
      int id,
      String? name,
      String? description,
      @JsonKey(name: "created_at") int? createdAt,
      @JsonKey(name: "merit_type") MeritType? meritType,
      @JsonKey(name: "recipient") String? recipient});
}

/// @nodoc
class __$$MeritModelImplCopyWithImpl<$Res>
    extends _$MeritModelCopyWithImpl<$Res, _$MeritModelImpl>
    implements _$$MeritModelImplCopyWith<$Res> {
  __$$MeritModelImplCopyWithImpl(
      _$MeritModelImpl _value, $Res Function(_$MeritModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeritModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? meritType = freezed,
    Object? recipient = freezed,
  }) {
    return _then(_$MeritModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      meritType: freezed == meritType
          ? _value.meritType
          : meritType // ignore: cast_nullable_to_non_nullable
              as MeritType?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeritModelImpl implements _MeritModel {
  const _$MeritModelImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0)
      this.id = 0,
      this.name,
      this.description,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "merit_type") this.meritType,
      @JsonKey(name: "recipient") this.recipient});

  factory _$MeritModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeritModelImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0)
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: "created_at")
  final int? createdAt;
  @override
  @JsonKey(name: "merit_type")
  final MeritType? meritType;
  @override
  @JsonKey(name: "recipient")
  final String? recipient;

  @override
  String toString() {
    return 'MeritModel(id: $id, name: $name, description: $description, createdAt: $createdAt, meritType: $meritType, recipient: $recipient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeritModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.meritType, meritType) ||
                other.meritType == meritType) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, createdAt, meritType, recipient);

  /// Create a copy of MeritModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeritModelImplCopyWith<_$MeritModelImpl> get copyWith =>
      __$$MeritModelImplCopyWithImpl<_$MeritModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeritModelImplToJson(
      this,
    );
  }
}

abstract class _MeritModel implements MeritModel {
  const factory _MeritModel(
      {@JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0)
      final int id,
      final String? name,
      final String? description,
      @JsonKey(name: "created_at") final int? createdAt,
      @JsonKey(name: "merit_type") final MeritType? meritType,
      @JsonKey(name: "recipient") final String? recipient}) = _$MeritModelImpl;

  factory _MeritModel.fromJson(Map<String, dynamic> json) =
      _$MeritModelImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: 0)
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: "created_at")
  int? get createdAt;
  @override
  @JsonKey(name: "merit_type")
  MeritType? get meritType;
  @override
  @JsonKey(name: "recipient")
  String? get recipient;

  /// Create a copy of MeritModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeritModelImplCopyWith<_$MeritModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
