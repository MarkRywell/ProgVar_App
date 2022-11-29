import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:practice/prog_var.dart';

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
        nextScreen: const ProgVar(title: "Programmer's Varsity"),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 350,
        backgroundColor: Color(0xFFFBC02D),
      )

    );
  }

}