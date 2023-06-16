import 'package:edumarshal/components/landingpage/edumar.dart';
import 'package:edumarshal/components/splaashpage/splashpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case '/firstpage':
        return MaterialPageRoute(builder: (_) => const firstpage());
      case '/splashpage':
        return MaterialPageRoute(builder: (_) => const splashscreen());  
      default:
        return null;

    }
  }
}