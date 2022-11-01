import 'package:flutter/material.dart';
import 'package:practice/animation_start.dart';

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
      home: AnimationStart()

    );
  }

}