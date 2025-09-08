// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviewer_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewerInfo _$ReviewerInfoFromJson(Map<String, dynamic> json) {
  return _ReviewerInfo.fromJson(json);
}

/// @nodoc
mixin _$ReviewerInfo {
  String? get organization => throw _privateConstructorUsedError;
  String? get reviewer_name => throw _privateConstructorUsedError;
  String? get review_date => throw _privateConstructorUsedError;

  /// Serializes this ReviewerInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewerInfoCopyWith<ReviewerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewerInfoCopyWith<$Res> {
  factory $ReviewerInfoCopyWith(
          ReviewerInfo value, $Res Function(ReviewerInfo) then) =
      _$ReviewerInfoCopyWithImpl<$Res, ReviewerInfo>;
  @useResult
  $Res call({String? organization, String? reviewer_name, String? review_date});
}

/// @nodoc
class _$ReviewerInfoCopyWithImpl<$Res, $Val extends ReviewerInfo>
    implements $ReviewerInfoCopyWith<$Res> {
  _$ReviewerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = freezed,
    Object? reviewer_name = freezed,
    Object? review_date = freezed,
  }) {
    return _then(_value.copyWith(
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer_name: freezed == reviewer_name
          ? _value.reviewer_name
          : reviewer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      review_date: freezed == review_date
          ? _value.review_date
          : review_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewerInfoImplCopyWith<$Res>
    implements $ReviewerInfoCopyWith<$Res> {
  factory _$$ReviewerInfoImplCopyWith(
          _$ReviewerInfoImpl value, $Res Function(_$ReviewerInfoImpl) then) =
      __$$ReviewerInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? organization, String? reviewer_name, String? review_date});
}

/// @nodoc
class __$$ReviewerInfoImplCopyWithImpl<$Res>
    extends _$ReviewerInfoCopyWithImpl<$Res, _$ReviewerInfoImpl>
    implements _$$ReviewerInfoImplCopyWith<$Res> {
  __$$ReviewerInfoImplCopyWithImpl(
      _$ReviewerInfoImpl _value, $Res Function(_$ReviewerInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organization = freezed,
    Object? reviewer_name = freezed,
    Object? review_date = freezed,
  }) {
    return _then(_$ReviewerInfoImpl(
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer_name: freezed == reviewer_name
          ? _value.reviewer_name
          : reviewer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      review_date: freezed == review_date
          ? _value.review_date
          : review_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewerInfoImpl implements _ReviewerInfo {
  const _$ReviewerInfoImpl(
      {this.organization, this.reviewer_name, this.review_date});

  factory _$ReviewerInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewerInfoImplFromJson(json);

  @override
  final String? organization;
  @override
  final String? reviewer_name;
  @override
  final String? review_date;

  @override
  String toString() {
    return 'ReviewerInfo(organization: $organization, reviewer_name: $reviewer_name, review_date: $review_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewerInfoImpl &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.reviewer_name, reviewer_name) ||
                other.reviewer_name == reviewer_name) &&
            (identical(other.review_date, review_date) ||
                other.review_date == review_date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, organization, reviewer_name, review_date);

  /// Create a copy of ReviewerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewerInfoImplCopyWith<_$ReviewerInfoImpl> get copyWith =>
      __$$ReviewerInfoImplCopyWithImpl<_$ReviewerInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewerInfoImplToJson(
      this,
    );
  }
}

abstract class _ReviewerInfo implements ReviewerInfo {
  const factory _ReviewerInfo(
      {final String? organization,
      final String? reviewer_name,
      final String? review_date}) = _$ReviewerInfoImpl;

  factory _ReviewerInfo.fromJson(Map<String, dynamic> json) =
      _$ReviewerInfoImpl.fromJson;

  @override
  String? get organization;
  @override
  String? get reviewer_name;
  @override
  String? get review_date;

  /// Create a copy of ReviewerInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewerInfoImplCopyWith<_$ReviewerInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
