import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'screen/auth_screen.dart';
import 'screen/intro_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
      routes: {
        'login': (context) => AuthScreen(),
      },
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(),
      ),
    );
  }
}
