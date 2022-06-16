import 'package:ancor_inc/core/utils/main_theme.dart';
import 'package:ancor_inc/core/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {



  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rlab app',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.light,
      initialRoute: "/home",
      onGenerateRoute: (settings) => RouterGenerator.genereateRoutes(settings),
    );
  }
}
