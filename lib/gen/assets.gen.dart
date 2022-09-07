/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsGifGen {
  const $AssetsGifGen();

  /// File path: assets/gif/footer_animation.gif
  AssetGenImage get footerAnimation =>
      const AssetGenImage('assets/gif/footer_animation.gif');
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/fgc_rumble.png
  AssetGenImage get fgcRumble =>
      const AssetGenImage('assets/png/fgc_rumble.png');

  /// File path: assets/png/smash_stockpile.png
  AssetGenImage get smashStockpile =>
      const AssetGenImage('assets/png/smash_stockpile.png');

  /// File path: assets/png/tab_profile.png
  AssetGenImage get tabProfile =>
      const AssetGenImage('assets/png/tab_profile.png');

  /// File path: assets/png/tab_profile_active.png
  AssetGenImage get tabProfileActive =>
      const AssetGenImage('assets/png/tab_profile_active.png');

  /// File path: assets/png/valorant_volume.png
  AssetGenImage get valorantVolume =>
      const AssetGenImage('assets/png/valorant_volume.png');
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/discord.svg
  SvgGenImage get discord => const SvgGenImage('assets/svg/discord.svg');

  /// File path: assets/svg/eye_icon.svg
  SvgGenImage get eyeIcon => const SvgGenImage('assets/svg/eye_icon.svg');

  /// File path: assets/svg/play-button.svg
  SvgGenImage get playButton => const SvgGenImage('assets/svg/play-button.svg');

  /// File path: assets/svg/tab_discover.svg
  SvgGenImage get tabDiscover =>
      const SvgGenImage('assets/svg/tab_discover.svg');

  /// File path: assets/svg/tab_discover_active.svg
  SvgGenImage get tabDiscoverActive =>
      const SvgGenImage('assets/svg/tab_discover_active.svg');

  /// File path: assets/svg/tab_home.svg
  SvgGenImage get tabHome => const SvgGenImage('assets/svg/tab_home.svg');

  /// File path: assets/svg/tab_home_active.svg
  SvgGenImage get tabHomeActive =>
      const SvgGenImage('assets/svg/tab_home_active.svg');

  /// File path: assets/svg/tab_hot.svg
  SvgGenImage get tabHot => const SvgGenImage('assets/svg/tab_hot.svg');

  /// File path: assets/svg/tab_hot_active.svg
  SvgGenImage get tabHotActive =>
      const SvgGenImage('assets/svg/tab_hot_active.svg');

  /// File path: assets/svg/tab_inbox.svg
  SvgGenImage get tabInbox => const SvgGenImage('assets/svg/tab_inbox.svg');

  /// File path: assets/svg/tab_inbox_active.svg
  SvgGenImage get tabInboxActive =>
      const SvgGenImage('assets/svg/tab_inbox_active.svg');
}

class Assets {
  Assets._();

  static const $AssetsGifGen gif = $AssetsGifGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
