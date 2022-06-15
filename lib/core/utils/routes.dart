import 'package:ancor_inc/screens/home_page/view/home_page.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static genereateRoutes(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (context) => HomePage());
      
    }
  }
}
