import 'package:auto_route/auto_route.dart';
import 'package:trending_today/main/pages/home_page.dart';
import 'package:trending_today/main/pages/tabs_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      initial: true,
      name: 'MainRouter',
      path: 'home/',
      page: TabsPage,
      children: [
        MaterialRoute(
          page: HomePage,
          path: 'hot',
          initial: true,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
