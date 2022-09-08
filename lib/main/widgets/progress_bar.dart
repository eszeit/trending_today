import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trending_today/common/colors.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.progress,
  });

  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 4.h,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(4.h),
      ),
      alignment: Alignment.centerLeft,
      constraints: BoxConstraints.tightForFinite(),
      child: FractionallySizedBox(
        widthFactor: progress,
        child: Stack(
          alignment: Alignment.centerRight,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: -4.r,
              child: _Flare(factor: progress),
            ),
            _InnerBar(factor: progress),
          ],
        ),
      ),
    );
  }
}

class _Flare extends StatelessWidget {
  const _Flare({
    Key? key,
    required this.factor,
  }) : super(key: key);

  final double factor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.5.r,
      height: 10.5.r,
      decoration: BoxDecoration(
        //oval shape
        borderRadius: BorderRadius.circular(11.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: (factor < 1 && factor > 0)
                ? Colors.white.withOpacity(0.24)
                : Colors.transparent,
          ),
        ],
      ),
    );
  }
}

class _InnerBar extends StatelessWidget {
  const _InnerBar({
    Key? key,
    required this.factor,
  }) : super(key: key);

  final double factor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.sunGold,
            factor == 1 ? AppColors.sunGold : Colors.white,
          ],
          stops: [0.95, 1],
        ),
        borderRadius: BorderRadius.circular(4.h),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkGold.withOpacity(0.4),
            offset: Offset(0, 1),
            blurRadius: 8,
          ),
        ],
      ),
    );
  }
}
