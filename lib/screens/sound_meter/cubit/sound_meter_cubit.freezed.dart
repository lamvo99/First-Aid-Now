// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sound_meter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SoundMeterState {
  String get languageCode => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  ScreenValue? get status => throw _privateConstructorUsedError;

  /// Create a copy of SoundMeterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SoundMeterStateCopyWith<SoundMeterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoundMeterStateCopyWith<$Res> {
  factory $SoundMeterStateCopyWith(
          SoundMeterState value, $Res Function(SoundMeterState) then) =
      _$SoundMeterStateCopyWithImpl<$Res, SoundMeterState>;
  @useResult
  $Res call({String languageCode, String? errorMessage, ScreenValue? status});
}

/// @nodoc
class _$SoundMeterStateCopyWithImpl<$Res, $Val extends SoundMeterState>
    implements $SoundMeterStateCopyWith<$Res> {
  _$SoundMeterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SoundMeterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? errorMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenValue?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SoundMeterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String languageCode, String? errorMessage, ScreenValue? status});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SoundMeterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SoundMeterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? errorMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_$InitialImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenValue?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {this.languageCode = "vi", this.errorMessage, this.status});

  @override
  @JsonKey()
  final String languageCode;
  @override
  final String? errorMessage;
  @override
  final ScreenValue? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SoundMeterState(languageCode: $languageCode, errorMessage: $errorMessage, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SoundMeterState'))
      ..add(DiagnosticsProperty('languageCode', languageCode))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, languageCode, errorMessage, status);

  /// Create a copy of SoundMeterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SoundMeterState {
  const factory _Initial(
      {final String languageCode,
      final String? errorMessage,
      final ScreenValue? status}) = _$InitialImpl;

  @override
  String get languageCode;
  @override
  String? get errorMessage;
  @override
  ScreenValue? get status;

  /// Create a copy of SoundMeterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
