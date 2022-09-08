import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trending_today/gen/assets.gen.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
    this.width,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32.r),
      child: _DropShadow(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: _ButtonBody(
            width: width ?? 64.r,
            child: _Icon(),
          ),
        ),
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  const _Icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.25),
            blurRadius: 14,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 4.r),
        child: Assets.svg.playButton.svg(
          width: 20.r,
          height: 24.r,
        ),
      ),
    );
  }
}

class _ButtonBody extends StatelessWidget {
  const _ButtonBody({
    Key? key,
    required this.child,
    required this.width,
  }) : super(key: key);

  final double width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(32.r),
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          gradient: RadialGradient(
            colors: [
              Colors.transparent,
              Colors.white.withOpacity(0.2),
            ],
            radius: 1,
            stops: [0.1, 0.57],
          ),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}

class _DropShadow extends StatelessWidget {
  const _DropShadow({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: child,
    );
  }
}
