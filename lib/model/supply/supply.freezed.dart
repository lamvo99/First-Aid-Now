// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupplyModel _$SupplyModelFromJson(Map<String, dynamic> json) {
  return _SupplyModel.fromJson(json);
}

/// @nodoc
mixin _$SupplyModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  SuppliesCategory? get supplyCategory => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get dateExpired => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastCheckedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get isImportant => throw _privateConstructorUsedError;
  dynamic get isChecked => throw _privateConstructorUsedError;

  /// Serializes this SupplyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupplyModelCopyWith<SupplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplyModelCopyWith<$Res> {
  factory $SupplyModelCopyWith(
          SupplyModel value, $Res Function(SupplyModel) then) =
      _$SupplyModelCopyWithImpl<$Res, SupplyModel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? note,
      SuppliesCategory? supplyCategory,
      int? quantity,
      @TimestampConverter() DateTime? dateExpired,
      @TimestampConverter() DateTime? lastCheckedAt,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      dynamic isImportant,
      dynamic isChecked});
}

/// @nodoc
class _$SupplyModelCopyWithImpl<$Res, $Val extends SupplyModel>
    implements $SupplyModelCopyWith<$Res> {
  _$SupplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? note = freezed,
    Object? supplyCategory = freezed,
    Object? quantity = freezed,
    Object? dateExpired = freezed,
    Object? lastCheckedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isImportant = freezed,
    Object? isChecked = freezed,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      supplyCategory: freezed == supplyCategory
          ? _value.supplyCategory
          : supplyCategory // ignore: cast_nullable_to_non_nullable
              as SuppliesCategory?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      dateExpired: freezed == dateExpired
          ? _value.dateExpired
          : dateExpired // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastCheckedAt: freezed == lastCheckedAt
          ? _value.lastCheckedAt
          : lastCheckedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isImportant: freezed == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplyModelImplCopyWith<$Res>
    implements $SupplyModelCopyWith<$Res> {
  factory _$$SupplyModelImplCopyWith(
          _$SupplyModelImpl value, $Res Function(_$SupplyModelImpl) then) =
      __$$SupplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? note,
      SuppliesCategory? supplyCategory,
      int? quantity,
      @TimestampConverter() DateTime? dateExpired,
      @TimestampConverter() DateTime? lastCheckedAt,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      dynamic isImportant,
      dynamic isChecked});
}

/// @nodoc
class __$$SupplyModelImplCopyWithImpl<$Res>
    extends _$SupplyModelCopyWithImpl<$Res, _$SupplyModelImpl>
    implements _$$SupplyModelImplCopyWith<$Res> {
  __$$SupplyModelImplCopyWithImpl(
      _$SupplyModelImpl _value, $Res Function(_$SupplyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? note = freezed,
    Object? supplyCategory = freezed,
    Object? quantity = freezed,
    Object? dateExpired = freezed,
    Object? lastCheckedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isImportant = freezed,
    Object? isChecked = freezed,
  }) {
    return _then(_$SupplyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      supplyCategory: freezed == supplyCategory
          ? _value.supplyCategory
          : supplyCategory // ignore: cast_nullable_to_non_nullable
              as SuppliesCategory?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      dateExpired: freezed == dateExpired
          ? _value.dateExpired
          : dateExpired // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastCheckedAt: freezed == lastCheckedAt
          ? _value.lastCheckedAt
          : lastCheckedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isImportant: freezed == isImportant ? _value.isImportant! : isImportant,
      isChecked: freezed == isChecked ? _value.isChecked! : isChecked,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupplyModelImpl implements _SupplyModel {
  const _$SupplyModelImpl(
      {this.id = 0,
      this.name,
      this.note,
      this.supplyCategory,
      this.quantity,
      @TimestampConverter() this.dateExpired,
      @TimestampConverter() this.lastCheckedAt,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      this.isImportant = false,
      this.isChecked = false});

  factory _$SupplyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupplyModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String? name;
  @override
  final String? note;
  @override
  final SuppliesCategory? supplyCategory;
  @override
  final int? quantity;
  @override
  @TimestampConverter()
  final DateTime? dateExpired;
  @override
  @TimestampConverter()
  final DateTime? lastCheckedAt;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final dynamic isImportant;
  @override
  @JsonKey()
  final dynamic isChecked;

  @override
  String toString() {
    return 'SupplyModel(id: $id, name: $name, note: $note, supplyCategory: $supplyCategory, quantity: $quantity, dateExpired: $dateExpired, lastCheckedAt: $lastCheckedAt, createdAt: $createdAt, updatedAt: $updatedAt, isImportant: $isImportant, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.supplyCategory, supplyCategory) ||
                other.supplyCategory == supplyCategory) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.dateExpired, dateExpired) ||
                other.dateExpired == dateExpired) &&
            (identical(other.lastCheckedAt, lastCheckedAt) ||
                other.lastCheckedAt == lastCheckedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.isImportant, isImportant) &&
            const DeepCollectionEquality().equals(other.isChecked, isChecked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      note,
      supplyCategory,
      quantity,
      dateExpired,
      lastCheckedAt,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(isImportant),
      const DeepCollectionEquality().hash(isChecked));

  /// Create a copy of SupplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplyModelImplCopyWith<_$SupplyModelImpl> get copyWith =>
      __$$SupplyModelImplCopyWithImpl<_$SupplyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupplyModelImplToJson(
      this,
    );
  }
}

abstract class _SupplyModel implements SupplyModel {
  const factory _SupplyModel(
      {final int id,
      final String? name,
      final String? note,
      final SuppliesCategory? supplyCategory,
      final int? quantity,
      @TimestampConverter() final DateTime? dateExpired,
      @TimestampConverter() final DateTime? lastCheckedAt,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt,
      final dynamic isImportant,
      final dynamic isChecked}) = _$SupplyModelImpl;

  factory _SupplyModel.fromJson(Map<String, dynamic> json) =
      _$SupplyModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get note;
  @override
  SuppliesCategory? get supplyCategory;
  @override
  int? get quantity;
  @override
  @TimestampConverter()
  DateTime? get dateExpired;
  @override
  @TimestampConverter()
  DateTime? get lastCheckedAt;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  dynamic get isImportant;
  @override
  dynamic get isChecked;

  /// Create a copy of SupplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupplyModelImplCopyWith<_$SupplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
