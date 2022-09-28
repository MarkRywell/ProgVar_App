import 'package:practice/CoreMembers.dart';
import 'package:practice/ProgVar.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});


  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Container(
        child: ListView (

          children: [
            Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left:15, top:20),
                  title: const Text("What is ProgVar",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {

                      return const ProgVar(title:"Programmer's Varsity");

                    }));
                  },
                ),
                ListTile(
                  title:
                  const Text("Core Members",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const CoreMembers(title: "Programmer's Varsity");
                    }));
                  },
                  )
              ],
            )
          ],
        )
      )
    );

  }

}