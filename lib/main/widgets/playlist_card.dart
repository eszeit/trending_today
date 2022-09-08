import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trending_today/common/business_objects/playlist.dart';
import 'package:trending_today/common/colors.dart';
import 'package:trending_today/common/widgets/clip_pad.dart';
import 'package:trending_today/common/widgets/gradient_box_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trending_today/common/typography.dart';
import 'package:trending_today/gen/assets.gen.dart';
import 'package:trending_today/main/widgets/play_button.dart';
import 'package:trending_today/main/widgets/progress_bar.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({Key? key, required this.playlist}) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return _DropShadow(
      shadowColor: playlist.mainColor,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: _ColoredBorderContainer(color: playlist.mainColor),
              ),
              _CardDecoration(
                mainColor: playlist.mainColor,
                child: _CardContents(
                  asset: playlist.asset,
                  totalVideos: playlist.totalVideos,
                  newVideos: playlist.newVideos,
                  watchedVideos: playlist.watchedVideos,
                  name: playlist.name,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardContents extends StatelessWidget {
  const _CardContents({
    Key? key,
    required this.asset,
    required this.newVideos,
    required this.totalVideos,
    required this.watchedVideos,
    required this.name,
  }) : super(key: key);

  final String asset;
  final String name;
  final int watchedVideos;
  final int newVideos;
  final int totalVideos;

  Color _getColor(bool expression) {
    return expression ? AppColors.sunGold : AppColors.base200;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                asset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -32.r,
              right: 20.r,
              child: PlayButton(
                width: 64.r,
              ),
            ),
          ],
        ),
        SizedBox(height: 4.r),
        Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                name,
                style: AppTypography.playlistName.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Text(
                    '+$newVideos New Videos',
                    style: AppTypography.subtext.copyWith(
                      color: _getColor(
                        (totalVideos - watchedVideos) >= newVideos,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 3.h, 4.w, 1.h),
                    child: Assets.svg.eyeIcon.svg(
                      width: 12.r,
                      height: 12.r,
                      color: _getColor(watchedVideos == 0),
                    ),
                  ),
                  Text(
                    '$watchedVideos/$totalVideos',
                    style: AppTypography.subtext.copyWith(
                      color: _getColor(watchedVideos == 0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              ProgressBar(progress: watchedVideos / totalVideos),
            ],
          ),
        ),
      ],
    );
  }
}

// aplies drop shadow with rounding and clipping to avoid
// blurring it with backdrop filter
class _DropShadow extends StatelessWidget {
  const _DropShadow({
    Key? key,
    required this.child,
    required this.shadowColor,
  }) : super(key: key);

  final Widget child;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipper: ClipPad(
        padding: EdgeInsets.only(left: 10.r, top: 10.r),
        radius: Radius.circular(32.r),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.2),
              blurRadius: 16,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}

// applies non-white border and inner shadows
class _ColoredBorderContainer extends StatelessWidget {
  const _ColoredBorderContainer({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.05),
            offset: Offset(0, 2),
            blurRadius: 4,
            blurStyle: BlurStyle.outer,
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.03),
            offset: Offset(0, 12),
            blurRadius: 24,
            blurStyle: BlurStyle.outer,
          ),
        ],
        border: GradientBoxBorder(
          gradient: RadialGradient(
            colors: [
              color.withOpacity(0.15),
              color.withOpacity(0.0),
            ],
            center: Alignment.topLeft,
            radius: 1.5,
          ),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(32.r),
      ),
      clipBehavior: Clip.hardEdge,
    );
  }
}

// outer container applies white-gradiented border,
// inner container applies background gradient and semi-opaque white fill
class _CardDecoration extends StatelessWidget {
  const _CardDecoration({
    Key? key,
    required this.mainColor,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.2),
              Colors.black.withOpacity(0.2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(32.r),
        color: Colors.white.withOpacity(0.075),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              mainColor.withOpacity(0.2),
              mainColor.withOpacity(0),
            ],
            center: Alignment.topLeft,
            radius: 1.3,
          ),
          borderRadius: BorderRadius.circular(28.r),
        ),
        padding: EdgeInsets.all(12.r),
        child: child,
      ),
    );
  }
}
