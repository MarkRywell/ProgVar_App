import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:practice/prog_var.dart';

class AnimationStart extends StatelessWidget {

  const AnimationStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return AnimatedSplashScreen(
        splash: ClipRRect(
            borderRadius: BorderRadius.circular(1),
            child: Image.asset('assets/progvarTransparent.png')
        ),
        nextScreen: const ProgVar(title: "Programmer's Varsity"),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 250,
        backgroundColor: Color(0xFFFBC02D),
    );
  }
}

