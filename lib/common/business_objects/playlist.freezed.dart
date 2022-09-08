// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Playlist {
  int get totalVideos => throw _privateConstructorUsedError;
  int get newVideos => throw _privateConstructorUsedError;
  int get watchedVideos => throw _privateConstructorUsedError;
  String get asset => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Color get mainColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res>;
  $Res call(
      {int totalVideos,
      int newVideos,
      int watchedVideos,
      String asset,
      String name,
      Color mainColor});
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res> implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  final Playlist _value;
  // ignore: unused_field
  final $Res Function(Playlist) _then;

  @override
  $Res call({
    Object? totalVideos = freezed,
    Object? newVideos = freezed,
    Object? watchedVideos = freezed,
    Object? asset = freezed,
    Object? name = freezed,
    Object? mainColor = freezed,
  }) {
    return _then(_value.copyWith(
      totalVideos: totalVideos == freezed
          ? _value.totalVideos
          : totalVideos // ignore: cast_nullable_to_non_nullable
              as int,
      newVideos: newVideos == freezed
          ? _value.newVideos
          : newVideos // ignore: cast_nullable_to_non_nullable
              as int,
      watchedVideos: watchedVideos == freezed
          ? _value.watchedVideos
          : watchedVideos // ignore: cast_nullable_to_non_nullable
              as int,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: mainColor == freezed
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaylistCopyWith<$Res> implements $PlaylistCopyWith<$Res> {
  factory _$$_PlaylistCopyWith(
          _$_Playlist value, $Res Function(_$_Playlist) then) =
      __$$_PlaylistCopyWithImpl<$Res>;
  @override
  $Res call(
      {int totalVideos,
      int newVideos,
      int watchedVideos,
      String asset,
      String name,
      Color mainColor});
}

/// @nodoc
class __$$_PlaylistCopyWithImpl<$Res> extends _$PlaylistCopyWithImpl<$Res>
    implements _$$_PlaylistCopyWith<$Res> {
  __$$_PlaylistCopyWithImpl(
      _$_Playlist _value, $Res Function(_$_Playlist) _then)
      : super(_value, (v) => _then(v as _$_Playlist));

  @override
  _$_Playlist get _value => super._value as _$_Playlist;

  @override
  $Res call({
    Object? totalVideos = freezed,
    Object? newVideos = freezed,
    Object? watchedVideos = freezed,
    Object? asset = freezed,
    Object? name = freezed,
    Object? mainColor = freezed,
  }) {
    return _then(_$_Playlist(
      totalVideos: totalVideos == freezed
          ? _value.totalVideos
          : totalVideos // ignore: cast_nullable_to_non_nullable
              as int,
      newVideos: newVideos == freezed
          ? _value.newVideos
          : newVideos // ignore: cast_nullable_to_non_nullable
              as int,
      watchedVideos: watchedVideos == freezed
          ? _value.watchedVideos
          : watchedVideos // ignore: cast_nullable_to_non_nullable
              as int,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: mainColor == freezed
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_Playlist implements _Playlist {
  _$_Playlist(
      {required this.totalVideos,
      required this.newVideos,
      required this.watchedVideos,
      required this.asset,
      required this.name,
      required this.mainColor});

  @override
  final int totalVideos;
  @override
  final int newVideos;
  @override
  final int watchedVideos;
  @override
  final String asset;
  @override
  final String name;
  @override
  final Color mainColor;

  @override
  String toString() {
    return 'Playlist(totalVideos: $totalVideos, newVideos: $newVideos, watchedVideos: $watchedVideos, asset: $asset, name: $name, mainColor: $mainColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Playlist &&
            const DeepCollectionEquality()
                .equals(other.totalVideos, totalVideos) &&
            const DeepCollectionEquality().equals(other.newVideos, newVideos) &&
            const DeepCollectionEquality()
                .equals(other.watchedVideos, watchedVideos) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.mainColor, mainColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalVideos),
      const DeepCollectionEquality().hash(newVideos),
      const DeepCollectionEquality().hash(watchedVideos),
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(mainColor));

  @JsonKey(ignore: true)
  @override
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      __$$_PlaylistCopyWithImpl<_$_Playlist>(this, _$identity);
}

abstract class _Playlist implements Playlist {
  factory _Playlist(
      {required final int totalVideos,
      required final int newVideos,
      required final int watchedVideos,
      required final String asset,
      required final String name,
      required final Color mainColor}) = _$_Playlist;

  @override
  int get totalVideos;
  @override
  int get newVideos;
  @override
  int get watchedVideos;
  @override
  String get asset;
  @override
  String get name;
  @override
  Color get mainColor;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistCopyWith<_$_Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}
