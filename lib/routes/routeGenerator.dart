import 'package:flutter/material.dart';
import 'package:minesweeper/widget/game.dart';
import 'package:minesweeper/widget/loading.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<Widget>(builder: (_) => Loading());
      case GameActivity.routeName:
        return MaterialPageRoute<Widget>(builder: (_) => GameActivity());

      // If there is no such named route in the switch statement, e.g. /third
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute<Widget>(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Sorry!'),
        ),
        body: Center(
          child: Text('Something went wrong'),
        ),
      );
    });
  }
}
