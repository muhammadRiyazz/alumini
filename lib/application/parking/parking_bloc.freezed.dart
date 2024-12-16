// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YearParking year) changeyear,
    required TResult Function() fetchparkings,
    required TResult Function() fetchmeals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YearParking year)? changeyear,
    TResult? Function()? fetchparkings,
    TResult? Function()? fetchmeals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YearParking year)? changeyear,
    TResult Function()? fetchparkings,
    TResult Function()? fetchmeals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Changeyear value) changeyear,
    required TResult Function(Fetchparkings value) fetchparkings,
    required TResult Function(fetchmeals value) fetchmeals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Changeyear value)? changeyear,
    TResult? Function(Fetchparkings value)? fetchparkings,
    TResult? Function(fetchmeals value)? fetchmeals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Changeyear value)? changeyear,
    TResult Function(Fetchparkings value)? fetchparkings,
    TResult Function(fetchmeals value)? fetchmeals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchingEventCopyWith<$Res> {
  factory $FetchingEventCopyWith(
          FetchingEvent value, $Res Function(FetchingEvent) then) =
      _$FetchingEventCopyWithImpl<$Res, FetchingEvent>;
}

/// @nodoc
class _$FetchingEventCopyWithImpl<$Res, $Val extends FetchingEvent>
    implements $FetchingEventCopyWith<$Res> {
  _$FetchingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeyearImplCopyWith<$Res> {
  factory _$$ChangeyearImplCopyWith(
          _$ChangeyearImpl value, $Res Function(_$ChangeyearImpl) then) =
      __$$ChangeyearImplCopyWithImpl<$Res>;
  @useResult
  $Res call({YearParking year});
}

/// @nodoc
class __$$ChangeyearImplCopyWithImpl<$Res>
    extends _$FetchingEventCopyWithImpl<$Res, _$ChangeyearImpl>
    implements _$$ChangeyearImplCopyWith<$Res> {
  __$$ChangeyearImplCopyWithImpl(
      _$ChangeyearImpl _value, $Res Function(_$ChangeyearImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
  }) {
    return _then(_$ChangeyearImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as YearParking,
    ));
  }
}

/// @nodoc

class _$ChangeyearImpl implements Changeyear {
  const _$ChangeyearImpl({required this.year});

  @override
  final YearParking year;

  @override
  String toString() {
    return 'FetchingEvent.changeyear(year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeyearImpl &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, year);

  /// Create a copy of FetchingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeyearImplCopyWith<_$ChangeyearImpl> get copyWith =>
      __$$ChangeyearImplCopyWithImpl<_$ChangeyearImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YearParking year) changeyear,
    required TResult Function() fetchparkings,
    required TResult Function() fetchmeals,
  }) {
    return changeyear(year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YearParking year)? changeyear,
    TResult? Function()? fetchparkings,
    TResult? Function()? fetchmeals,
  }) {
    return changeyear?.call(year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YearParking year)? changeyear,
    TResult Function()? fetchparkings,
    TResult Function()? fetchmeals,
    required TResult orElse(),
  }) {
    if (changeyear != null) {
      return changeyear(year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Changeyear value) changeyear,
    required TResult Function(Fetchparkings value) fetchparkings,
    required TResult Function(fetchmeals value) fetchmeals,
  }) {
    return changeyear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Changeyear value)? changeyear,
    TResult? Function(Fetchparkings value)? fetchparkings,
    TResult? Function(fetchmeals value)? fetchmeals,
  }) {
    return changeyear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Changeyear value)? changeyear,
    TResult Function(Fetchparkings value)? fetchparkings,
    TResult Function(fetchmeals value)? fetchmeals,
    required TResult orElse(),
  }) {
    if (changeyear != null) {
      return changeyear(this);
    }
    return orElse();
  }
}

abstract class Changeyear implements FetchingEvent {
  const factory Changeyear({required final YearParking year}) =
      _$ChangeyearImpl;

  YearParking get year;

  /// Create a copy of FetchingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeyearImplCopyWith<_$ChangeyearImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchparkingsImplCopyWith<$Res> {
  factory _$$FetchparkingsImplCopyWith(
          _$FetchparkingsImpl value, $Res Function(_$FetchparkingsImpl) then) =
      __$$FetchparkingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchparkingsImplCopyWithImpl<$Res>
    extends _$FetchingEventCopyWithImpl<$Res, _$FetchparkingsImpl>
    implements _$$FetchparkingsImplCopyWith<$Res> {
  __$$FetchparkingsImplCopyWithImpl(
      _$FetchparkingsImpl _value, $Res Function(_$FetchparkingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchparkingsImpl implements Fetchparkings {
  const _$FetchparkingsImpl();

  @override
  String toString() {
    return 'FetchingEvent.fetchparkings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchparkingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YearParking year) changeyear,
    required TResult Function() fetchparkings,
    required TResult Function() fetchmeals,
  }) {
    return fetchparkings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YearParking year)? changeyear,
    TResult? Function()? fetchparkings,
    TResult? Function()? fetchmeals,
  }) {
    return fetchparkings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YearParking year)? changeyear,
    TResult Function()? fetchparkings,
    TResult Function()? fetchmeals,
    required TResult orElse(),
  }) {
    if (fetchparkings != null) {
      return fetchparkings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Changeyear value) changeyear,
    required TResult Function(Fetchparkings value) fetchparkings,
    required TResult Function(fetchmeals value) fetchmeals,
  }) {
    return fetchparkings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Changeyear value)? changeyear,
    TResult? Function(Fetchparkings value)? fetchparkings,
    TResult? Function(fetchmeals value)? fetchmeals,
  }) {
    return fetchparkings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Changeyear value)? changeyear,
    TResult Function(Fetchparkings value)? fetchparkings,
    TResult Function(fetchmeals value)? fetchmeals,
    required TResult orElse(),
  }) {
    if (fetchparkings != null) {
      return fetchparkings(this);
    }
    return orElse();
  }
}

abstract class Fetchparkings implements FetchingEvent {
  const factory Fetchparkings() = _$FetchparkingsImpl;
}

/// @nodoc
abstract class _$$fetchmealsImplCopyWith<$Res> {
  factory _$$fetchmealsImplCopyWith(
          _$fetchmealsImpl value, $Res Function(_$fetchmealsImpl) then) =
      __$$fetchmealsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$fetchmealsImplCopyWithImpl<$Res>
    extends _$FetchingEventCopyWithImpl<$Res, _$fetchmealsImpl>
    implements _$$fetchmealsImplCopyWith<$Res> {
  __$$fetchmealsImplCopyWithImpl(
      _$fetchmealsImpl _value, $Res Function(_$fetchmealsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$fetchmealsImpl implements fetchmeals {
  const _$fetchmealsImpl();

  @override
  String toString() {
    return 'FetchingEvent.fetchmeals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$fetchmealsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(YearParking year) changeyear,
    required TResult Function() fetchparkings,
    required TResult Function() fetchmeals,
  }) {
    return fetchmeals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(YearParking year)? changeyear,
    TResult? Function()? fetchparkings,
    TResult? Function()? fetchmeals,
  }) {
    return fetchmeals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(YearParking year)? changeyear,
    TResult Function()? fetchparkings,
    TResult Function()? fetchmeals,
    required TResult orElse(),
  }) {
    if (fetchmeals != null) {
      return fetchmeals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Changeyear value) changeyear,
    required TResult Function(Fetchparkings value) fetchparkings,
    required TResult Function(fetchmeals value) fetchmeals,
  }) {
    return fetchmeals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Changeyear value)? changeyear,
    TResult? Function(Fetchparkings value)? fetchparkings,
    TResult? Function(fetchmeals value)? fetchmeals,
  }) {
    return fetchmeals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Changeyear value)? changeyear,
    TResult Function(Fetchparkings value)? fetchparkings,
    TResult Function(fetchmeals value)? fetchmeals,
    required TResult orElse(),
  }) {
    if (fetchmeals != null) {
      return fetchmeals(this);
    }
    return orElse();
  }
}

abstract class fetchmeals implements FetchingEvent {
  const factory fetchmeals() = _$fetchmealsImpl;
}

/// @nodoc
mixin _$FetchingState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<YearParking> get data => throw _privateConstructorUsedError;
  List<Meal> get mealdata => throw _privateConstructorUsedError;
  YearParking? get parking => throw _privateConstructorUsedError;

  /// Create a copy of FetchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchingStateCopyWith<FetchingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchingStateCopyWith<$Res> {
  factory $FetchingStateCopyWith(
          FetchingState value, $Res Function(FetchingState) then) =
      _$FetchingStateCopyWithImpl<$Res, FetchingState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<YearParking> data,
      List<Meal> mealdata,
      YearParking? parking});
}

/// @nodoc
class _$FetchingStateCopyWithImpl<$Res, $Val extends FetchingState>
    implements $FetchingStateCopyWith<$Res> {
  _$FetchingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
    Object? mealdata = null,
    Object? parking = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<YearParking>,
      mealdata: null == mealdata
          ? _value.mealdata
          : mealdata // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      parking: freezed == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as YearParking?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersStateImplCopyWith<$Res>
    implements $FetchingStateCopyWith<$Res> {
  factory _$$OrdersStateImplCopyWith(
          _$OrdersStateImpl value, $Res Function(_$OrdersStateImpl) then) =
      __$$OrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<YearParking> data,
      List<Meal> mealdata,
      YearParking? parking});
}

/// @nodoc
class __$$OrdersStateImplCopyWithImpl<$Res>
    extends _$FetchingStateCopyWithImpl<$Res, _$OrdersStateImpl>
    implements _$$OrdersStateImplCopyWith<$Res> {
  __$$OrdersStateImplCopyWithImpl(
      _$OrdersStateImpl _value, $Res Function(_$OrdersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
    Object? mealdata = null,
    Object? parking = freezed,
  }) {
    return _then(_$OrdersStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<YearParking>,
      mealdata: null == mealdata
          ? _value._mealdata
          : mealdata // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      parking: freezed == parking
          ? _value.parking
          : parking // ignore: cast_nullable_to_non_nullable
              as YearParking?,
    ));
  }
}

/// @nodoc

class _$OrdersStateImpl implements _OrdersState {
  _$OrdersStateImpl(
      {required this.isLoading,
      required final List<YearParking> data,
      required final List<Meal> mealdata,
      this.parking})
      : _data = data,
        _mealdata = mealdata;

  @override
  final bool isLoading;
  final List<YearParking> _data;
  @override
  List<YearParking> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<Meal> _mealdata;
  @override
  List<Meal> get mealdata {
    if (_mealdata is EqualUnmodifiableListView) return _mealdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealdata);
  }

  @override
  final YearParking? parking;

  @override
  String toString() {
    return 'FetchingState(isLoading: $isLoading, data: $data, mealdata: $mealdata, parking: $parking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._mealdata, _mealdata) &&
            (identical(other.parking, parking) || other.parking == parking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_mealdata),
      parking);

  /// Create a copy of FetchingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      __$$OrdersStateImplCopyWithImpl<_$OrdersStateImpl>(this, _$identity);
}

abstract class _OrdersState implements FetchingState {
  factory _OrdersState(
      {required final bool isLoading,
      required final List<YearParking> data,
      required final List<Meal> mealdata,
      final YearParking? parking}) = _$OrdersStateImpl;

  @override
  bool get isLoading;
  @override
  List<YearParking> get data;
  @override
  List<Meal> get mealdata;
  @override
  YearParking? get parking;

  /// Create a copy of FetchingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
