import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trending_today/common/colors.dart';
import 'package:trending_today/common/typography.dart';
import 'package:trending_today/gen/assets.gen.dart';
import 'package:trending_today/router.gr.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      homeIndex: 0,
      animationDuration: const Duration(milliseconds: 425),
      animationCurve: Curves.easeInOut,
      routes: const [
        HomeRoute(),
        HomeRoute(),
        HomeRoute(),
        HomeRoute(),
        HomeRoute(),
      ],
      bottomNavigationBuilder: (context, router) {
        return ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: BottomNavigationBar(
              backgroundColor: Colors.black.withOpacity(0.9),
              type: BottomNavigationBarType.fixed,
              currentIndex: router.activeIndex,
              onTap: router.setActiveIndex,
              selectedLabelStyle: AppTypography.bottomNavigation,
              selectedItemColor: AppColors.sunGold,
              unselectedLabelStyle: AppTypography.bottomNavigation,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              iconSize: 24.r,
              items: [
                BottomNavigationBarItem(
                  icon: Assets.svg.tabHot.svg(width: 24.r, height: 24.r),
                  activeIcon: _ActiveIcon(
                    icon: Assets.svg.tabHotActive.svg(
                      width: 24.r,
                      height: 24.r,
                    ),
                  ),
                  label: 'Hot',
                  tooltip: '',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Assets.svg.tabDiscover.svg(
                    width: 24.r,
                    height: 24.r,
                  ),
                  activeIcon: _ActiveIcon(
                    icon: Assets.svg.tabDiscoverActive.svg(
                      width: 24.r,
                      height: 24.r,
                    ),
                  ),
                  label: 'Discover',
                  tooltip: '',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Assets.svg.tabHome.svg(
                    width: 24.r,
                    height: 24.r,
                  ),
                  activeIcon: _ActiveIcon(
                    icon: Assets.svg.tabHomeActive.svg(
                      width: 24.r,
                      height: 24.r,
                    ),
                  ),
                  label: 'Watch',
                  tooltip: '',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Assets.svg.tabInbox.svg(
                    width: 24.r,
                    height: 24.r,
                  ),
                  activeIcon: _ActiveIcon(
                    icon: Assets.svg.tabInboxActive.svg(
                      width: 24.r,
                      height: 24.r,
                    ),
                  ),
                  label: 'Inbox',
                  tooltip: '',
                  backgroundColor: Colors.transparent,
                ),
                BottomNavigationBarItem(
                  icon: Assets.png.tabProfile.image(
                    width: 24.r,
                    height: 24.r,
                  ),
                  activeIcon: _ActiveIcon(
                    icon: Assets.png.tabProfileActive.image(
                      width: 24.r,
                      height: 24.r,
                    ),
                  ),
                  label: 'Profile',
                  tooltip: '',
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ActiveIcon extends StatelessWidget {
  const _ActiveIcon({Key? key, required this.icon}) : super(key: key);

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 3.h, top: 4.h),
          child: icon,
        ),
        Positioned(
          top: 56.h - MediaQuery.of(context).viewPadding.bottom,
          child: Container(
            width: 142.r,
            height: 48.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(142.r, 48.r)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.sunGold.withOpacity(0.3),
                  blurRadius: 50,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
