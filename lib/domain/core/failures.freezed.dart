// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServerFailure<T> {
  T? get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? msg) serverError,
    required TResult Function(T? msg) apiFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? msg)? serverError,
    TResult Function(T? msg)? apiFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? msg)? serverError,
    TResult Function(T? msg)? apiFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(ApiFailure<T> value) apiFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(ApiFailure<T> value)? apiFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(ApiFailure<T> value)? apiFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerFailureCopyWith<T, ServerFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<T, $Res> {
  factory $ServerFailureCopyWith(
          ServerFailure<T> value, $Res Function(ServerFailure<T>) then) =
      _$ServerFailureCopyWithImpl<T, $Res>;
  $Res call({T? msg});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<T, $Res>
    implements $ServerFailureCopyWith<T, $Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  final ServerFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ServerFailure<T>) _then;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<T, $Res>
    implements $ServerFailureCopyWith<T, $Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError<T> value, $Res Function(_$ServerError<T>) then) =
      __$$ServerErrorCopyWithImpl<T, $Res>;
  @override
  $Res call({T? msg});
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<T, $Res>
    extends _$ServerFailureCopyWithImpl<T, $Res>
    implements _$$ServerErrorCopyWith<T, $Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError<T> _value, $Res Function(_$ServerError<T>) _then)
      : super(_value, (v) => _then(v as _$ServerError<T>));

  @override
  _$ServerError<T> get _value => super._value as _$ServerError<T>;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ServerError<T>(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ServerError<T> implements ServerError<T> {
  const _$ServerError({this.msg});

  @override
  final T? msg;

  @override
  String toString() {
    return 'ServerFailure<$T>.serverError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerError<T> &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$ServerErrorCopyWith<T, _$ServerError<T>> get copyWith =>
      __$$ServerErrorCopyWithImpl<T, _$ServerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? msg) serverError,
    required TResult Function(T? msg) apiFailure,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? msg)? serverError,
    TResult Function(T? msg)? apiFailure,
  }) {
    return serverError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? msg)? serverError,
    TResult Function(T? msg)? apiFailure,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(ApiFailure<T> value) apiFailure,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(ApiFailure<T> value)? apiFailure,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(ApiFailure<T> value)? apiFailure,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements ServerFailure<T> {
  const factory ServerError({final T? msg}) = _$ServerError<T>;

  @override
  T? get msg;
  @override
  @JsonKey(ignore: true)
  _$$ServerErrorCopyWith<T, _$ServerError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiFailureCopyWith<T, $Res>
    implements $ServerFailureCopyWith<T, $Res> {
  factory _$$ApiFailureCopyWith(
          _$ApiFailure<T> value, $Res Function(_$ApiFailure<T>) then) =
      __$$ApiFailureCopyWithImpl<T, $Res>;
  @override
  $Res call({T? msg});
}

/// @nodoc
class __$$ApiFailureCopyWithImpl<T, $Res>
    extends _$ServerFailureCopyWithImpl<T, $Res>
    implements _$$ApiFailureCopyWith<T, $Res> {
  __$$ApiFailureCopyWithImpl(
      _$ApiFailure<T> _value, $Res Function(_$ApiFailure<T>) _then)
      : super(_value, (v) => _then(v as _$ApiFailure<T>));

  @override
  _$ApiFailure<T> get _value => super._value as _$ApiFailure<T>;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ApiFailure<T>(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ApiFailure<T> implements ApiFailure<T> {
  const _$ApiFailure({this.msg});

  @override
  final T? msg;

  @override
  String toString() {
    return 'ServerFailure<$T>.apiFailure(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiFailure<T> &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$$ApiFailureCopyWith<T, _$ApiFailure<T>> get copyWith =>
      __$$ApiFailureCopyWithImpl<T, _$ApiFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? msg) serverError,
    required TResult Function(T? msg) apiFailure,
  }) {
    return apiFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T? msg)? serverError,
    TResult Function(T? msg)? apiFailure,
  }) {
    return apiFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? msg)? serverError,
    TResult Function(T? msg)? apiFailure,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(ApiFailure<T> value) apiFailure,
  }) {
    return apiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(ApiFailure<T> value)? apiFailure,
  }) {
    return apiFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(ApiFailure<T> value)? apiFailure,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(this);
    }
    return orElse();
  }
}

abstract class ApiFailure<T> implements ServerFailure<T> {
  const factory ApiFailure({final T? msg}) = _$ApiFailure<T>;

  @override
  T? get msg;
  @override
  @JsonKey(ignore: true)
  _$$ApiFailureCopyWith<T, _$ApiFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
