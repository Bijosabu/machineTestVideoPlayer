// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'videos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVideos value) getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetVideos value)? getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVideos value)? getVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosEventCopyWith<$Res> {
  factory $VideosEventCopyWith(
          VideosEvent value, $Res Function(VideosEvent) then) =
      _$VideosEventCopyWithImpl<$Res, VideosEvent>;
}

/// @nodoc
class _$VideosEventCopyWithImpl<$Res, $Val extends VideosEvent>
    implements $VideosEventCopyWith<$Res> {
  _$VideosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetVideosCopyWith<$Res> {
  factory _$$_GetVideosCopyWith(
          _$_GetVideos value, $Res Function(_$_GetVideos) then) =
      __$$_GetVideosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetVideosCopyWithImpl<$Res>
    extends _$VideosEventCopyWithImpl<$Res, _$_GetVideos>
    implements _$$_GetVideosCopyWith<$Res> {
  __$$_GetVideosCopyWithImpl(
      _$_GetVideos _value, $Res Function(_$_GetVideos) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetVideos implements _GetVideos {
  const _$_GetVideos();

  @override
  String toString() {
    return 'VideosEvent.getVideos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetVideos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVideos,
  }) {
    return getVideos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getVideos,
  }) {
    return getVideos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVideos,
    required TResult orElse(),
  }) {
    if (getVideos != null) {
      return getVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVideos value) getVideos,
  }) {
    return getVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetVideos value)? getVideos,
  }) {
    return getVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVideos value)? getVideos,
    required TResult orElse(),
  }) {
    if (getVideos != null) {
      return getVideos(this);
    }
    return orElse();
  }
}

abstract class _GetVideos implements VideosEvent {
  const factory _GetVideos() = _$_GetVideos;
}

/// @nodoc
mixin _$VideosState {
  VideoDataModel? get videos => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideosStateCopyWith<VideosState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosStateCopyWith<$Res> {
  factory $VideosStateCopyWith(
          VideosState value, $Res Function(VideosState) then) =
      _$VideosStateCopyWithImpl<$Res, VideosState>;
  @useResult
  $Res call({VideoDataModel? videos, bool isLoading, bool isError});
}

/// @nodoc
class _$VideosStateCopyWithImpl<$Res, $Val extends VideosState>
    implements $VideosStateCopyWith<$Res> {
  _$VideosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as VideoDataModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideosStateCopyWith<$Res>
    implements $VideosStateCopyWith<$Res> {
  factory _$$_VideosStateCopyWith(
          _$_VideosState value, $Res Function(_$_VideosState) then) =
      __$$_VideosStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VideoDataModel? videos, bool isLoading, bool isError});
}

/// @nodoc
class __$$_VideosStateCopyWithImpl<$Res>
    extends _$VideosStateCopyWithImpl<$Res, _$_VideosState>
    implements _$$_VideosStateCopyWith<$Res> {
  __$$_VideosStateCopyWithImpl(
      _$_VideosState _value, $Res Function(_$_VideosState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_VideosState(
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as VideoDataModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideosState implements _VideosState {
  const _$_VideosState(
      {required this.videos, required this.isLoading, required this.isError});

  @override
  final VideoDataModel? videos;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'VideosState(videos: $videos, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideosState &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videos, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideosStateCopyWith<_$_VideosState> get copyWith =>
      __$$_VideosStateCopyWithImpl<_$_VideosState>(this, _$identity);
}

abstract class _VideosState implements VideosState {
  const factory _VideosState(
      {required final VideoDataModel? videos,
      required final bool isLoading,
      required final bool isError}) = _$_VideosState;

  @override
  VideoDataModel? get videos;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_VideosStateCopyWith<_$_VideosState> get copyWith =>
      throw _privateConstructorUsedError;
}
