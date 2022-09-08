import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trending_today/common/colors.dart';
import 'package:trending_today/common/common/gradient_box_border.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.child,
    this.onTap,
  });

  final VoidCallback? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(56.0),
      splashColor: Colors.white10,
      focusColor: Colors.white10,
      onTap: onTap,
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(56.0),
        child: _Decorator(
          child: Align(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}

class _Decorator extends StatelessWidget {
  const _Decorator({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(56.0),
          gradient: LinearGradient(
            colors: [
              AppColors.sunGold.withOpacity(0.5),
              AppColors.sunGold.withOpacity(0.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          border: GradientBoxBorder(
            gradient: AppColors.buttonBorderGradient,
            width: 0.5,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Colors.white.withOpacity(0.05),
            ),
            BoxShadow(
              blurRadius: 3,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 2),
              color: Colors.white.withOpacity(0.15),
            ),
          ],
        ),
        constraints: BoxConstraints.expand(
          width: double.infinity,
          height: 56.h,
        ),
        child: child,
      ),
    );
  }
}
