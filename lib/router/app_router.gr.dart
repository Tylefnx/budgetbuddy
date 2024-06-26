// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainPage());
    }
  };

  @override
  List<RouteConfig> get routes => [RouteConfig(MainRoute.name, path: '/')];
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/');

  static const String name = 'MainRoute';
}
