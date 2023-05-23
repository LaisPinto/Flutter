import 'package:flutter/material.dart';

import '../pages/_export_pages.dart';

class AppRoutes {

  static const String appRoutesHome = '/';
  static const String appRoutesAPage = '/a_page';
  static const String appRoutesBPage = '/b_page';
  static const String appRoutesAboutPage = '/about_page';

  Route getRoutes(RouteSettings routeSettings) {
    switch(routeSettings.name) {
      case appRoutesHome:
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (BuildContext context) => const MyHomePage(title: 'Navegação com rotas')
        );

      case appRoutesAPage:
        return MaterialPageRoute(
            settings: routeSettings,
            builder: (BuildContext context) => const APage()
        );

      case appRoutesBPage:
        return MaterialPageRoute(
            settings: routeSettings,
            builder: (BuildContext context) => const BPage()
        );

      case appRoutesAboutPage:
        return MaterialPageRoute(
            settings: routeSettings,
            builder: (BuildContext context) => const AboutPage()
        );

      default:
        return MaterialPageRoute(
            settings: routeSettings,
            builder: (BuildContext context) => const MyHomePage(title: 'Navegação com rotas')
        );
    }
  }
}