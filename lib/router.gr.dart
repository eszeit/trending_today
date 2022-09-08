// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:auto_route/empty_router_widgets.dart' as _i1;
import 'package:flutter/material.dart' as _i4;
import 'package:trending_today/main/pages/home_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainRouter.name: (routeData) {
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.EmptyRouterPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: 'home/', fullMatch: true),
        _i3.RouteConfig(MainRouter.name, path: 'home/', children: [
          _i3.RouteConfig('#redirect',
              path: '',
              parent: MainRouter.name,
              redirectTo: 'main',
              fullMatch: true),
          _i3.RouteConfig(HomeRoute.name, path: 'main', parent: MainRouter.name)
        ])
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class MainRouter extends _i3.PageRouteInfo<void> {
  const MainRouter({List<_i3.PageRouteInfo>? children})
      : super(MainRouter.name, path: 'home/', initialChildren: children);

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'main');

  static const String name = 'HomeRoute';
}
