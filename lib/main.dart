import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:practice/forms/login_page.dart';

void main() => runApp(
    const SimpleApp()
    );


class SimpleApp extends StatelessWidget {
  const SimpleApp ({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp (
      title: "ProgVar App",
      theme: (ThemeData(
        primarySwatch: Colors.orange,
      )),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/logo1.png'),
        splashIconSize: 200,
        duration: 3000,
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Color(0xFFFBC02D),

      )
    );
  }
}

