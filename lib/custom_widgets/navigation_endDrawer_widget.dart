// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NavigationEndDrawer extends StatelessWidget {
  const NavigationEndDrawer ({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 36),
      width: MediaQuery.of(context).size.width * 0.60,
      child: Drawer(
          child: ListView(
            children: const [
                  ListTile()
            ],
          )
      ),
    );

  }


}