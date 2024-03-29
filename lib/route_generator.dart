import 'package:flutter/material.dart';
import 'app.dart';
import 'home.dart';
import 'smart_gesture.dart';

class RouteGeneator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case '/app':
        return MaterialPageRoute(builder: (_) => AppPage());
      case '/smart_gestures':
        return MaterialPageRoute(builder: (_) => SmartGesturePage());
      default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('ERROR'),),
      );
    }); 
  }
}