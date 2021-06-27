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
        'login': (context) => AuthScreen(
              authType: AuthType.login,
            ),
        'register': (context) => AuthScreen(
              authType: AuthType.register,
            ),
      },
      //this for custome theme to your app
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            //this for give color
            fillColor: Color(0xfff2f9fc),
            filled: true,
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(
                  color: Colors.grey,
                )),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  25,
                ),
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ))),
      ),
    );
  }
}
