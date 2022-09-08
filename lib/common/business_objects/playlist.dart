import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist.freezed.dart';

@freezed
class Playlist with _$Playlist {
  factory Playlist({
    required int totalVideos,
    required int newVideos,
    required int watchedVideos,
    required String asset,
    required String name,
    required Color mainColor,
  }) = _Playlist;
}
