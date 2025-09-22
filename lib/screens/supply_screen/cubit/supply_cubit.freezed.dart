// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supply_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupplyState {
  String? get errorMessage => throw _privateConstructorUsedError;
  ScreenValue? get status => throw _privateConstructorUsedError;
  List<SupplyModel> get supplies => throw _privateConstructorUsedError;
  String get search => throw _privateConstructorUsedError;
  SupplySort get supplySort => throw _privateConstructorUsedError;
  bool get isSort => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? errorMessage,
            ScreenValue? status,
            List<SupplyModel> supplies,
            String search,
            SupplySort supplySort,
            bool isSort)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? errorMessage,
            ScreenValue? status,
            List<SupplyModel> supplies,
            String search,
            SupplySort supplySort,
            bool isSort)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? errorMessage,
            ScreenValue? status,
            List<SupplyModel> supplies,
            String search,
            SupplySort supplySort,
            bool isSort)?
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

  /// Create a copy of SupplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupplyStateCopyWith<SupplyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplyStateCopyWith<$Res> {
  factory $SupplyStateCopyWith(
          SupplyState value, $Res Function(SupplyState) then) =
      _$SupplyStateCopyWithImpl<$Res, SupplyState>;
  @useResult
  $Res call(
      {String? errorMessage,
      ScreenValue? status,
      List<SupplyModel> supplies,
      String search,
      SupplySort supplySort,
      bool isSort});
}

/// @nodoc
class _$SupplyStateCopyWithImpl<$Res, $Val extends SupplyState>
    implements $SupplyStateCopyWith<$Res> {
  _$SupplyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? status = freezed,
    Object? supplies = null,
    Object? search = null,
    Object? supplySort = null,
    Object? isSort = null,
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
      supplies: null == supplies
          ? _value.supplies
          : supplies // ignore: cast_nullable_to_non_nullable
              as List<SupplyModel>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      supplySort: null == supplySort
          ? _value.supplySort
          : supplySort // ignore: cast_nullable_to_non_nullable
              as SupplySort,
      isSort: null == isSort
          ? _value.isSort
          : isSort // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SupplyStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      ScreenValue? status,
      List<SupplyModel> supplies,
      String search,
      SupplySort supplySort,
      bool isSort});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SupplyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? status = freezed,
    Object? supplies = null,
    Object? search = null,
    Object? supplySort = null,
    Object? isSort = null,
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
      supplies: null == supplies
          ? _value._supplies
          : supplies // ignore: cast_nullable_to_non_nullable
              as List<SupplyModel>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      supplySort: null == supplySort
          ? _value.supplySort
          : supplySort // ignore: cast_nullable_to_non_nullable
              as SupplySort,
      isSort: null == isSort
          ? _value.isSort
          : isSort // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {this.errorMessage,
      this.status,
      final List<SupplyModel> supplies = const [],
      this.search = "",
      this.supplySort = SupplySort.DEFAULT,
      this.isSort = false})
      : _supplies = supplies;

  @override
  final String? errorMessage;
  @override
  final ScreenValue? status;
  final List<SupplyModel> _supplies;
  @override
  @JsonKey()
  List<SupplyModel> get supplies {
    if (_supplies is EqualUnmodifiableListView) return _supplies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supplies);
  }

  @override
  @JsonKey()
  final String search;
  @override
  @JsonKey()
  final SupplySort supplySort;
  @override
  @JsonKey()
  final bool isSort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupplyState.initial(errorMessage: $errorMessage, status: $status, supplies: $supplies, search: $search, supplySort: $supplySort, isSort: $isSort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SupplyState.initial'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('supplies', supplies))
      ..add(DiagnosticsProperty('search', search))
      ..add(DiagnosticsProperty('supplySort', supplySort))
      ..add(DiagnosticsProperty('isSort', isSort));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._supplies, _supplies) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.supplySort, supplySort) ||
                other.supplySort == supplySort) &&
            (identical(other.isSort, isSort) || other.isSort == isSort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      errorMessage,
      status,
      const DeepCollectionEquality().hash(_supplies),
      search,
      supplySort,
      isSort);

  /// Create a copy of SupplyState
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
            List<SupplyModel> supplies,
            String search,
            SupplySort supplySort,
            bool isSort)
        initial,
  }) {
    return initial(errorMessage, status, supplies, search, supplySort, isSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? errorMessage,
            ScreenValue? status,
            List<SupplyModel> supplies,
            String search,
            SupplySort supplySort,
            bool isSort)?
        initial,
  }) {
    return initial?.call(
        errorMessage, status, supplies, search, supplySort, isSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? errorMessage,
            ScreenValue? status,
            List<SupplyModel> supplies,
            String search,
            SupplySort supplySort,
            bool isSort)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          errorMessage, status, supplies, search, supplySort, isSort);
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

abstract class _Initial implements SupplyState {
  const factory _Initial(
      {final String? errorMessage,
      final ScreenValue? status,
      final List<SupplyModel> supplies,
      final String search,
      final SupplySort supplySort,
      final bool isSort}) = _$InitialImpl;

  @override
  String? get errorMessage;
  @override
  ScreenValue? get status;
  @override
  List<SupplyModel> get supplies;
  @override
  String get search;
  @override
  SupplySort get supplySort;
  @override
  bool get isSort;

  /// Create a copy of SupplyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
