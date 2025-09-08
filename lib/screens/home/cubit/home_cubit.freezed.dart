// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  String? get errorMessage => throw _privateConstructorUsedError;
  ScreenValue? get status => throw _privateConstructorUsedError;
  DateTime get currentDate => throw _privateConstructorUsedError;
  List<PersonalEvent> get listPersonalEvent =>
      throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  EmergencyNumber? get emergencyNumber => throw _privateConstructorUsedError;
  BannerAd? get bannerAd => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? errorMessage,
            ScreenValue? status,
            DateTime currentDate,
            List<PersonalEvent> listPersonalEvent,
            Locale? locale,
            EmergencyNumber? emergencyNumber,
            BannerAd? bannerAd)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? errorMessage,
            ScreenValue? status,
            DateTime currentDate,
            List<PersonalEvent> listPersonalEvent,
            Locale? locale,
            EmergencyNumber? emergencyNumber,
            BannerAd? bannerAd)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? errorMessage,
            ScreenValue? status,
            DateTime currentDate,
            List<PersonalEvent> listPersonalEvent,
            Locale? locale,
            EmergencyNumber? emergencyNumber,
            BannerAd? bannerAd)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String? errorMessage,
      ScreenValue? status,
      DateTime currentDate,
      List<PersonalEvent> listPersonalEvent,
      Locale? locale,
      EmergencyNumber? emergencyNumber,
      BannerAd? bannerAd});

  $EmergencyNumberCopyWith<$Res>? get emergencyNumber;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? status = freezed,
    Object? currentDate = null,
    Object? listPersonalEvent = null,
    Object? locale = freezed,
    Object? emergencyNumber = freezed,
    Object? bannerAd = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenValue?,
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      listPersonalEvent: null == listPersonalEvent
          ? _value.listPersonalEvent
          : listPersonalEvent // ignore: cast_nullable_to_non_nullable
              as List<PersonalEvent>,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      emergencyNumber: freezed == emergencyNumber
          ? _value.emergencyNumber
          : emergencyNumber // ignore: cast_nullable_to_non_nullable
              as EmergencyNumber?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmergencyNumberCopyWith<$Res>? get emergencyNumber {
    if (_value.emergencyNumber == null) {
      return null;
    }

    return $EmergencyNumberCopyWith<$Res>(_value.emergencyNumber!, (value) {
      return _then(_value.copyWith(emergencyNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      ScreenValue? status,
      DateTime currentDate,
      List<PersonalEvent> listPersonalEvent,
      Locale? locale,
      EmergencyNumber? emergencyNumber,
      BannerAd? bannerAd});

  @override
  $EmergencyNumberCopyWith<$Res>? get emergencyNumber;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? status = freezed,
    Object? currentDate = null,
    Object? listPersonalEvent = null,
    Object? locale = freezed,
    Object? emergencyNumber = freezed,
    Object? bannerAd = freezed,
  }) {
    return _then(_$InitialImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScreenValue?,
      currentDate: null == currentDate
          ? _value.currentDate
          : currentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      listPersonalEvent: null == listPersonalEvent
          ? _value._listPersonalEvent
          : listPersonalEvent // ignore: cast_nullable_to_non_nullable
              as List<PersonalEvent>,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      emergencyNumber: freezed == emergencyNumber
          ? _value.emergencyNumber
          : emergencyNumber // ignore: cast_nullable_to_non_nullable
              as EmergencyNumber?,
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {this.errorMessage,
      this.status,
      required this.currentDate,
      final List<PersonalEvent> listPersonalEvent = const [],
      this.locale,
      this.emergencyNumber,
      this.bannerAd})
      : _listPersonalEvent = listPersonalEvent;

  @override
  final String? errorMessage;
  @override
  final ScreenValue? status;
  @override
  final DateTime currentDate;
  final List<PersonalEvent> _listPersonalEvent;
  @override
  @JsonKey()
  List<PersonalEvent> get listPersonalEvent {
    if (_listPersonalEvent is EqualUnmodifiableListView)
      return _listPersonalEvent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPersonalEvent);
  }

  @override
  final Locale? locale;
  @override
  final EmergencyNumber? emergencyNumber;
  @override
  final BannerAd? bannerAd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.initial(errorMessage: $errorMessage, status: $status, currentDate: $currentDate, listPersonalEvent: $listPersonalEvent, locale: $locale, emergencyNumber: $emergencyNumber, bannerAd: $bannerAd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.initial'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('currentDate', currentDate))
      ..add(DiagnosticsProperty('listPersonalEvent', listPersonalEvent))
      ..add(DiagnosticsProperty('locale', locale))
      ..add(DiagnosticsProperty('emergencyNumber', emergencyNumber))
      ..add(DiagnosticsProperty('bannerAd', bannerAd));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentDate, currentDate) ||
                other.currentDate == currentDate) &&
            const DeepCollectionEquality()
                .equals(other._listPersonalEvent, _listPersonalEvent) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.emergencyNumber, emergencyNumber) ||
                other.emergencyNumber == emergencyNumber) &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      status,
      currentDate,
      const DeepCollectionEquality().hash(_listPersonalEvent),
      locale,
      emergencyNumber,
      bannerAd);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? errorMessage,
            ScreenValue? status,
            DateTime currentDate,
            List<PersonalEvent> listPersonalEvent,
            Locale? locale,
            EmergencyNumber? emergencyNumber,
            BannerAd? bannerAd)
        initial,
  }) {
    return initial(errorMessage, status, currentDate, listPersonalEvent, locale,
        emergencyNumber, bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? errorMessage,
            ScreenValue? status,
            DateTime currentDate,
            List<PersonalEvent> listPersonalEvent,
            Locale? locale,
            EmergencyNumber? emergencyNumber,
            BannerAd? bannerAd)?
        initial,
  }) {
    return initial?.call(errorMessage, status, currentDate, listPersonalEvent,
        locale, emergencyNumber, bannerAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? errorMessage,
            ScreenValue? status,
            DateTime currentDate,
            List<PersonalEvent> listPersonalEvent,
            Locale? locale,
            EmergencyNumber? emergencyNumber,
            BannerAd? bannerAd)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(errorMessage, status, currentDate, listPersonalEvent,
          locale, emergencyNumber, bannerAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final String? errorMessage,
      final ScreenValue? status,
      required final DateTime currentDate,
      final List<PersonalEvent> listPersonalEvent,
      final Locale? locale,
      final EmergencyNumber? emergencyNumber,
      final BannerAd? bannerAd}) = _$InitialImpl;

  @override
  String? get errorMessage;
  @override
  ScreenValue? get status;
  @override
  DateTime get currentDate;
  @override
  List<PersonalEvent> get listPersonalEvent;
  @override
  Locale? get locale;
  @override
  EmergencyNumber? get emergencyNumber;
  @override
  BannerAd? get bannerAd;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
