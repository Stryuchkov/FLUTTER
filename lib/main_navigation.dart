import 'package:dart_lesson/factories/di_container.dart';
import 'package:dart_lesson/ui/widgets/my_app.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames {
  static const example = '/';
}

class MainNavigationDefault implements MainNavigation {
  MainNavigationDefault();

  @override
  Map<String, Widget Function(BuildContext)> makeRoutes() =>
      <String, Widget Function(BuildContext)>{
        MainNavigationRouteNames.example: (_) =>
            ServiceLocator.instace.makeExampleScreen(),
      };

  @override
  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        const widget = Text('Navigation error!!!');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }
}
