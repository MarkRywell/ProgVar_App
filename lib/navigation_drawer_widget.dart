import 'package:practice/CoreMembers.dart';
import 'package:practice/ProgVar.dart';
import 'package:flutter/material.dart';

String dropDownValues = 'Members';

var items = ["Core Members", "Interns"];

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
        width: 250,
      child: Container(
        child: ListView (

          children: [
            Column(
              children: [
                Container(
                  color: Colors.yellow[700],
                  width: 250,
                  height: 70.0,
                  child: DrawerHeader (
                    child: Text(''),
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        image: DecorationImage(
                            image: AssetImage("assets/coverPhoto.png"),
                            fit: BoxFit.cover)
                    ),
                    //box decoration
                    margin: EdgeInsets.zero,
                  ),
                ),
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