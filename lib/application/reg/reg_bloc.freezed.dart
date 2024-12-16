// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reg_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) reg,
    required TResult Function(String data, String img) updatefood,
    required TResult Function(String img) updatememento,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? reg,
    TResult? Function(String data, String img)? updatefood,
    TResult? Function(String img)? updatememento,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? reg,
    TResult Function(String data, String img)? updatefood,
    TResult Function(String img)? updatememento,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Reg value) reg,
    required TResult Function(Updatefood value) updatefood,
    required TResult Function(Updatememento value) updatememento,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Reg value)? reg,
    TResult? Function(Updatefood value)? updatefood,
    TResult? Function(Updatememento value)? updatememento,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Reg value)? reg,
    TResult Function(Updatefood value)? updatefood,
    TResult Function(Updatememento value)? updatememento,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegEventCopyWith<$Res> {
  factory $RegEventCopyWith(RegEvent value, $Res Function(RegEvent) then) =
      _$RegEventCopyWithImpl<$Res, RegEvent>;
}

/// @nodoc
class _$RegEventCopyWithImpl<$Res, $Val extends RegEvent>
    implements $RegEventCopyWith<$Res> {
  _$RegEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegImplCopyWith<$Res> {
  factory _$$RegImplCopyWith(_$RegImpl value, $Res Function(_$RegImpl) then) =
      __$$RegImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$RegImplCopyWithImpl<$Res>
    extends _$RegEventCopyWithImpl<$Res, _$RegImpl>
    implements _$$RegImplCopyWith<$Res> {
  __$$RegImplCopyWithImpl(_$RegImpl _value, $Res Function(_$RegImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RegImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$RegImpl implements Reg {
  const _$RegImpl({required final Map<String, dynamic> data}) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'RegEvent.reg(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegImplCopyWith<_$RegImpl> get copyWith =>
      __$$RegImplCopyWithImpl<_$RegImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) reg,
    required TResult Function(String data, String img) updatefood,
    required TResult Function(String img) updatememento,
  }) {
    return reg(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? reg,
    TResult? Function(String data, String img)? updatefood,
    TResult? Function(String img)? updatememento,
  }) {
    return reg?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? reg,
    TResult Function(String data, String img)? updatefood,
    TResult Function(String img)? updatememento,
    required TResult orElse(),
  }) {
    if (reg != null) {
      return reg(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Reg value) reg,
    required TResult Function(Updatefood value) updatefood,
    required TResult Function(Updatememento value) updatememento,
  }) {
    return reg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Reg value)? reg,
    TResult? Function(Updatefood value)? updatefood,
    TResult? Function(Updatememento value)? updatememento,
  }) {
    return reg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Reg value)? reg,
    TResult Function(Updatefood value)? updatefood,
    TResult Function(Updatememento value)? updatememento,
    required TResult orElse(),
  }) {
    if (reg != null) {
      return reg(this);
    }
    return orElse();
  }
}

abstract class Reg implements RegEvent {
  const factory Reg({required final Map<String, dynamic> data}) = _$RegImpl;

  Map<String, dynamic> get data;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegImplCopyWith<_$RegImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatefoodImplCopyWith<$Res> {
  factory _$$UpdatefoodImplCopyWith(
          _$UpdatefoodImpl value, $Res Function(_$UpdatefoodImpl) then) =
      __$$UpdatefoodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data, String img});
}

/// @nodoc
class __$$UpdatefoodImplCopyWithImpl<$Res>
    extends _$RegEventCopyWithImpl<$Res, _$UpdatefoodImpl>
    implements _$$UpdatefoodImplCopyWith<$Res> {
  __$$UpdatefoodImplCopyWithImpl(
      _$UpdatefoodImpl _value, $Res Function(_$UpdatefoodImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? img = null,
  }) {
    return _then(_$UpdatefoodImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatefoodImpl implements Updatefood {
  const _$UpdatefoodImpl({required this.data, required this.img});

  @override
  final String data;
  @override
  final String img;

  @override
  String toString() {
    return 'RegEvent.updatefood(data: $data, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatefoodImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, img);

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatefoodImplCopyWith<_$UpdatefoodImpl> get copyWith =>
      __$$UpdatefoodImplCopyWithImpl<_$UpdatefoodImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) reg,
    required TResult Function(String data, String img) updatefood,
    required TResult Function(String img) updatememento,
  }) {
    return updatefood(data, img);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? reg,
    TResult? Function(String data, String img)? updatefood,
    TResult? Function(String img)? updatememento,
  }) {
    return updatefood?.call(data, img);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? reg,
    TResult Function(String data, String img)? updatefood,
    TResult Function(String img)? updatememento,
    required TResult orElse(),
  }) {
    if (updatefood != null) {
      return updatefood(data, img);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Reg value) reg,
    required TResult Function(Updatefood value) updatefood,
    required TResult Function(Updatememento value) updatememento,
  }) {
    return updatefood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Reg value)? reg,
    TResult? Function(Updatefood value)? updatefood,
    TResult? Function(Updatememento value)? updatememento,
  }) {
    return updatefood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Reg value)? reg,
    TResult Function(Updatefood value)? updatefood,
    TResult Function(Updatememento value)? updatememento,
    required TResult orElse(),
  }) {
    if (updatefood != null) {
      return updatefood(this);
    }
    return orElse();
  }
}

abstract class Updatefood implements RegEvent {
  const factory Updatefood(
      {required final String data,
      required final String img}) = _$UpdatefoodImpl;

  String get data;
  String get img;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatefoodImplCopyWith<_$UpdatefoodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatemementoImplCopyWith<$Res> {
  factory _$$UpdatemementoImplCopyWith(
          _$UpdatemementoImpl value, $Res Function(_$UpdatemementoImpl) then) =
      __$$UpdatemementoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String img});
}

/// @nodoc
class __$$UpdatemementoImplCopyWithImpl<$Res>
    extends _$RegEventCopyWithImpl<$Res, _$UpdatemementoImpl>
    implements _$$UpdatemementoImplCopyWith<$Res> {
  __$$UpdatemementoImplCopyWithImpl(
      _$UpdatemementoImpl _value, $Res Function(_$UpdatemementoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
  }) {
    return _then(_$UpdatemementoImpl(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatemementoImpl implements Updatememento {
  const _$UpdatemementoImpl({required this.img});

  @override
  final String img;

  @override
  String toString() {
    return 'RegEvent.updatememento(img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatemementoImpl &&
            (identical(other.img, img) || other.img == img));
  }

  @override
  int get hashCode => Object.hash(runtimeType, img);

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatemementoImplCopyWith<_$UpdatemementoImpl> get copyWith =>
      __$$UpdatemementoImplCopyWithImpl<_$UpdatemementoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) reg,
    required TResult Function(String data, String img) updatefood,
    required TResult Function(String img) updatememento,
  }) {
    return updatememento(img);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? reg,
    TResult? Function(String data, String img)? updatefood,
    TResult? Function(String img)? updatememento,
  }) {
    return updatememento?.call(img);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? reg,
    TResult Function(String data, String img)? updatefood,
    TResult Function(String img)? updatememento,
    required TResult orElse(),
  }) {
    if (updatememento != null) {
      return updatememento(img);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Reg value) reg,
    required TResult Function(Updatefood value) updatefood,
    required TResult Function(Updatememento value) updatememento,
  }) {
    return updatememento(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Reg value)? reg,
    TResult? Function(Updatefood value)? updatefood,
    TResult? Function(Updatememento value)? updatememento,
  }) {
    return updatememento?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Reg value)? reg,
    TResult Function(Updatefood value)? updatefood,
    TResult Function(Updatememento value)? updatememento,
    required TResult orElse(),
  }) {
    if (updatememento != null) {
      return updatememento(this);
    }
    return orElse();
  }
}

abstract class Updatememento implements RegEvent {
  const factory Updatememento({required final String img}) =
      _$UpdatemementoImpl;

  String get img;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatemementoImplCopyWith<_$UpdatemementoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get registerd => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegStateCopyWith<RegState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegStateCopyWith<$Res> {
  factory $RegStateCopyWith(RegState value, $Res Function(RegState) then) =
      _$RegStateCopyWithImpl<$Res, RegState>;
  @useResult
  $Res call({bool isLoading, bool registerd, bool done, String? id});
}

/// @nodoc
class _$RegStateCopyWithImpl<$Res, $Val extends RegState>
    implements $RegStateCopyWith<$Res> {
  _$RegStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? registerd = null,
    Object? done = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      registerd: null == registerd
          ? _value.registerd
          : registerd // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrdersStateImplCopyWith<$Res>
    implements $RegStateCopyWith<$Res> {
  factory _$$OrdersStateImplCopyWith(
          _$OrdersStateImpl value, $Res Function(_$OrdersStateImpl) then) =
      __$$OrdersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool registerd, bool done, String? id});
}

/// @nodoc
class __$$OrdersStateImplCopyWithImpl<$Res>
    extends _$RegStateCopyWithImpl<$Res, _$OrdersStateImpl>
    implements _$$OrdersStateImplCopyWith<$Res> {
  __$$OrdersStateImplCopyWithImpl(
      _$OrdersStateImpl _value, $Res Function(_$OrdersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? registerd = null,
    Object? done = null,
    Object? id = freezed,
  }) {
    return _then(_$OrdersStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      registerd: null == registerd
          ? _value.registerd
          : registerd // ignore: cast_nullable_to_non_nullable
              as bool,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OrdersStateImpl implements _OrdersState {
  _$OrdersStateImpl(
      {required this.isLoading,
      required this.registerd,
      required this.done,
      this.id});

  @override
  final bool isLoading;
  @override
  final bool registerd;
  @override
  final bool done;
  @override
  final String? id;

  @override
  String toString() {
    return 'RegState(isLoading: $isLoading, registerd: $registerd, done: $done, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrdersStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.registerd, registerd) ||
                other.registerd == registerd) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, registerd, done, id);

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      __$$OrdersStateImplCopyWithImpl<_$OrdersStateImpl>(this, _$identity);
}

abstract class _OrdersState implements RegState {
  factory _OrdersState(
      {required final bool isLoading,
      required final bool registerd,
      required final bool done,
      final String? id}) = _$OrdersStateImpl;

  @override
  bool get isLoading;
  @override
  bool get registerd;
  @override
  bool get done;
  @override
  String? get id;

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrdersStateImplCopyWith<_$OrdersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
