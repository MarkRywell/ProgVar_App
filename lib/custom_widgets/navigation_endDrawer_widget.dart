// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:practice/forms/login_page.dart';

class NavigationEndDrawer extends StatelessWidget {
  const NavigationEndDrawer ({super.key});

  @override
  Widget build(BuildContext context){

    Size size = MediaQuery.of(context).size;

    return Container(
      width: MediaQuery.of(context).size.width * 0.50,
      child: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: CircleAvatar(
                  radius: 70,
                  child: Icon(Icons.person),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  child: Text("LOGIN",
                    style: TextStyle(fontFamily: 'Berlin Sans FB Demi'),),
                  onPressed: () {
                      Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) => LoginPage()
                        ), (route) => false
                      );
                  },
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  child: Text("REGISTER",
                    style: TextStyle(fontFamily: 'Berlin Sans FB Demi'),),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        )
                    );
                  },
                ),
              ),

            ],
          )
      ),
    );

  }


}