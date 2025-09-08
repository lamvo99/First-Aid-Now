// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Guide _$GuideFromJson(Map<String, dynamic> json) {
  return _Guide.fromJson(json);
}

/// @nodoc
mixin _$Guide {
  String? get id => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  List<AgeGroup>? get age_groups => throw _privateConstructorUsedError;
  SeverityLevel? get severity_level => throw _privateConstructorUsedError;
  int? get estimated_time_sec => throw _privateConstructorUsedError;
  DateTime? get last_updated => throw _privateConstructorUsedError;
  List<Step>? get steps => throw _privateConstructorUsedError;
  String? get when_to_seek_care => throw _privateConstructorUsedError;
  References? get references => throw _privateConstructorUsedError;
  ReviewerInfo? get reviewer_info => throw _privateConstructorUsedError;
  List<String>? get quiz_ids => throw _privateConstructorUsedError;

  /// Serializes this Guide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuideCopyWith<Guide> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideCopyWith<$Res> {
  factory $GuideCopyWith(Guide value, $Res Function(Guide) then) =
      _$GuideCopyWithImpl<$Res, Guide>;
  @useResult
  $Res call(
      {String? id,
      String? version,
      Category? category,
      String? title,
      String? description,
      String? thumbnail,
      List<AgeGroup>? age_groups,
      SeverityLevel? severity_level,
      int? estimated_time_sec,
      DateTime? last_updated,
      List<Step>? steps,
      String? when_to_seek_care,
      References? references,
      ReviewerInfo? reviewer_info,
      List<String>? quiz_ids});

  $CategoryCopyWith<$Res>? get category;
  $ReferencesCopyWith<$Res>? get references;
  $ReviewerInfoCopyWith<$Res>? get reviewer_info;
}

/// @nodoc
class _$GuideCopyWithImpl<$Res, $Val extends Guide>
    implements $GuideCopyWith<$Res> {
  _$GuideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? age_groups = freezed,
    Object? severity_level = freezed,
    Object? estimated_time_sec = freezed,
    Object? last_updated = freezed,
    Object? steps = freezed,
    Object? when_to_seek_care = freezed,
    Object? references = freezed,
    Object? reviewer_info = freezed,
    Object? quiz_ids = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      age_groups: freezed == age_groups
          ? _value.age_groups
          : age_groups // ignore: cast_nullable_to_non_nullable
              as List<AgeGroup>?,
      severity_level: freezed == severity_level
          ? _value.severity_level
          : severity_level // ignore: cast_nullable_to_non_nullable
              as SeverityLevel?,
      estimated_time_sec: freezed == estimated_time_sec
          ? _value.estimated_time_sec
          : estimated_time_sec // ignore: cast_nullable_to_non_nullable
              as int?,
      last_updated: freezed == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      when_to_seek_care: freezed == when_to_seek_care
          ? _value.when_to_seek_care
          : when_to_seek_care // ignore: cast_nullable_to_non_nullable
              as String?,
      references: freezed == references
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as References?,
      reviewer_info: freezed == reviewer_info
          ? _value.reviewer_info
          : reviewer_info // ignore: cast_nullable_to_non_nullable
              as ReviewerInfo?,
      quiz_ids: freezed == quiz_ids
          ? _value.quiz_ids
          : quiz_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferencesCopyWith<$Res>? get references {
    if (_value.references == null) {
      return null;
    }

    return $ReferencesCopyWith<$Res>(_value.references!, (value) {
      return _then(_value.copyWith(references: value) as $Val);
    });
  }

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReviewerInfoCopyWith<$Res>? get reviewer_info {
    if (_value.reviewer_info == null) {
      return null;
    }

    return $ReviewerInfoCopyWith<$Res>(_value.reviewer_info!, (value) {
      return _then(_value.copyWith(reviewer_info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuideImplCopyWith<$Res> implements $GuideCopyWith<$Res> {
  factory _$$GuideImplCopyWith(
          _$GuideImpl value, $Res Function(_$GuideImpl) then) =
      __$$GuideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? version,
      Category? category,
      String? title,
      String? description,
      String? thumbnail,
      List<AgeGroup>? age_groups,
      SeverityLevel? severity_level,
      int? estimated_time_sec,
      DateTime? last_updated,
      List<Step>? steps,
      String? when_to_seek_care,
      References? references,
      ReviewerInfo? reviewer_info,
      List<String>? quiz_ids});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $ReferencesCopyWith<$Res>? get references;
  @override
  $ReviewerInfoCopyWith<$Res>? get reviewer_info;
}

/// @nodoc
class __$$GuideImplCopyWithImpl<$Res>
    extends _$GuideCopyWithImpl<$Res, _$GuideImpl>
    implements _$$GuideImplCopyWith<$Res> {
  __$$GuideImplCopyWithImpl(
      _$GuideImpl _value, $Res Function(_$GuideImpl) _then)
      : super(_value, _then);

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
    Object? age_groups = freezed,
    Object? severity_level = freezed,
    Object? estimated_time_sec = freezed,
    Object? last_updated = freezed,
    Object? steps = freezed,
    Object? when_to_seek_care = freezed,
    Object? references = freezed,
    Object? reviewer_info = freezed,
    Object? quiz_ids = freezed,
  }) {
    return _then(_$GuideImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      age_groups: freezed == age_groups
          ? _value._age_groups
          : age_groups // ignore: cast_nullable_to_non_nullable
              as List<AgeGroup>?,
      severity_level: freezed == severity_level
          ? _value.severity_level
          : severity_level // ignore: cast_nullable_to_non_nullable
              as SeverityLevel?,
      estimated_time_sec: freezed == estimated_time_sec
          ? _value.estimated_time_sec
          : estimated_time_sec // ignore: cast_nullable_to_non_nullable
              as int?,
      last_updated: freezed == last_updated
          ? _value.last_updated
          : last_updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<Step>?,
      when_to_seek_care: freezed == when_to_seek_care
          ? _value.when_to_seek_care
          : when_to_seek_care // ignore: cast_nullable_to_non_nullable
              as String?,
      references: freezed == references
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as References?,
      reviewer_info: freezed == reviewer_info
          ? _value.reviewer_info
          : reviewer_info // ignore: cast_nullable_to_non_nullable
              as ReviewerInfo?,
      quiz_ids: freezed == quiz_ids
          ? _value._quiz_ids
          : quiz_ids // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideImpl implements _Guide {
  const _$GuideImpl(
      {this.id,
      this.version,
      this.category,
      this.title,
      this.description,
      this.thumbnail,
      final List<AgeGroup>? age_groups,
      this.severity_level,
      this.estimated_time_sec,
      this.last_updated,
      final List<Step>? steps,
      this.when_to_seek_care,
      this.references,
      this.reviewer_info,
      final List<String>? quiz_ids})
      : _age_groups = age_groups,
        _steps = steps,
        _quiz_ids = quiz_ids;

  factory _$GuideImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideImplFromJson(json);

  @override
  final String? id;
  @override
  final String? version;
  @override
  final Category? category;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? thumbnail;
  final List<AgeGroup>? _age_groups;
  @override
  List<AgeGroup>? get age_groups {
    final value = _age_groups;
    if (value == null) return null;
    if (_age_groups is EqualUnmodifiableListView) return _age_groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SeverityLevel? severity_level;
  @override
  final int? estimated_time_sec;
  @override
  final DateTime? last_updated;
  final List<Step>? _steps;
  @override
  List<Step>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? when_to_seek_care;
  @override
  final References? references;
  @override
  final ReviewerInfo? reviewer_info;
  final List<String>? _quiz_ids;
  @override
  List<String>? get quiz_ids {
    final value = _quiz_ids;
    if (value == null) return null;
    if (_quiz_ids is EqualUnmodifiableListView) return _quiz_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Guide(id: $id, version: $version, category: $category, title: $title, description: $description, thumbnail: $thumbnail, age_groups: $age_groups, severity_level: $severity_level, estimated_time_sec: $estimated_time_sec, last_updated: $last_updated, steps: $steps, when_to_seek_care: $when_to_seek_care, references: $references, reviewer_info: $reviewer_info, quiz_ids: $quiz_ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality()
                .equals(other._age_groups, _age_groups) &&
            (identical(other.severity_level, severity_level) ||
                other.severity_level == severity_level) &&
            (identical(other.estimated_time_sec, estimated_time_sec) ||
                other.estimated_time_sec == estimated_time_sec) &&
            (identical(other.last_updated, last_updated) ||
                other.last_updated == last_updated) &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.when_to_seek_care, when_to_seek_care) ||
                other.when_to_seek_care == when_to_seek_care) &&
            (identical(other.references, references) ||
                other.references == references) &&
            (identical(other.reviewer_info, reviewer_info) ||
                other.reviewer_info == reviewer_info) &&
            const DeepCollectionEquality().equals(other._quiz_ids, _quiz_ids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      version,
      category,
      title,
      description,
      thumbnail,
      const DeepCollectionEquality().hash(_age_groups),
      severity_level,
      estimated_time_sec,
      last_updated,
      const DeepCollectionEquality().hash(_steps),
      when_to_seek_care,
      references,
      reviewer_info,
      const DeepCollectionEquality().hash(_quiz_ids));

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideImplCopyWith<_$GuideImpl> get copyWith =>
      __$$GuideImplCopyWithImpl<_$GuideImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideImplToJson(
      this,
    );
  }
}

abstract class _Guide implements Guide {
  const factory _Guide(
      {final String? id,
      final String? version,
      final Category? category,
      final String? title,
      final String? description,
      final String? thumbnail,
      final List<AgeGroup>? age_groups,
      final SeverityLevel? severity_level,
      final int? estimated_time_sec,
      final DateTime? last_updated,
      final List<Step>? steps,
      final String? when_to_seek_care,
      final References? references,
      final ReviewerInfo? reviewer_info,
      final List<String>? quiz_ids}) = _$GuideImpl;

  factory _Guide.fromJson(Map<String, dynamic> json) = _$GuideImpl.fromJson;

  @override
  String? get id;
  @override
  String? get version;
  @override
  Category? get category;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get thumbnail;
  @override
  List<AgeGroup>? get age_groups;
  @override
  SeverityLevel? get severity_level;
  @override
  int? get estimated_time_sec;
  @override
  DateTime? get last_updated;
  @override
  List<Step>? get steps;
  @override
  String? get when_to_seek_care;
  @override
  References? get references;
  @override
  ReviewerInfo? get reviewer_info;
  @override
  List<String>? get quiz_ids;

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuideImplCopyWith<_$GuideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
