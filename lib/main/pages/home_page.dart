import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trending_today/common/colors.dart';
import 'package:trending_today/common/common/app_button.dart';
import 'package:trending_today/common/typography.dart';
import 'package:trending_today/main/widgets/gradient_text.dart';
import 'package:trending_today/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        children: [
          SafeArea(
            child: SizedBox(height: 40.h),
            bottom: false,
          ),
          Row(
            children: [
              GradientText(
                'Trending Today ',
                gradient: AppColors.textGradient,
                textStyle: AppTypography.pageHeading.copyWith(
                  color: Colors.white,
                  height: 1,
                ),
              ),
              Text(
                '🔥',
                style: AppTypography.pageHeading,
              ),
            ],
          ),
          Image.asset(
            Assets.gif.footerAnimation.path,
            width: 270.r,
            height: 245.r,
          ),
          Text(
            'Check back soon for new clips and creator content.',
            style: AppTypography.title.copyWith(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            'In the meantime, join our Discord.',
            style: AppTypography.textRegular.copyWith(
              color: AppColors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40.h),
          AppButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.svg.discord.svg(width: 24.r, height: 24.r),
                SizedBox(width: 8.w),
                Text(
                  'Join MetaView Discord',
                  style: AppTypography.button,
                ),
              ],
            ),
            onTap: () {},
          ),
          SafeArea(
            child: SizedBox(height: 24.h),
            top: false,
          ),
        ],
      ),
    );
  }
}
