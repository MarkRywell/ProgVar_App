// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:practice/navigation_drawer_widget.dart';

class CoreMembers extends StatefulWidget {
  const CoreMembers({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<CoreMembers> createState() => _CoreMembersState();
}

class _CoreMembersState extends State<CoreMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.indigo[900],
        title: const Text("Core Members"),
        leading: Builder(builder: (BuildContext context) {
          return CircleAvatar(
            backgroundImage: const AssetImage('assets/progvarLogo.png'),
            backgroundColor: Colors.yellow[700],
            child: IconButton(
                icon: const Icon(null),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              tooltip:
              MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
          );
        },

        ),
        actions: const [

        ],
      ),

      body: ListView(
        children: const [
          ListTile(
            title: Text("Angel Rose Naval"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/angel.JPG')),
            subtitle: Text("CEO"),
          ),
          ListTile(
            title: Text("Joshua Ryle Bracho"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/joshua.JPG')),
            subtitle: Text("COO"),
          ),
          ListTile(
            title: Text("Charles Sabuero"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/charles.JPG')),
            subtitle: Text("Senior Front-End Developer"),
          ),
          ListTile(
            title: Text("Jane Auguis"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/jane.JPG')),
            subtitle: Text("Front-End Developer"),
          ),
          ListTile(
            title: Text("John Ray Cañete"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/johnray.JPG')),
            subtitle: Text("Front-End Developer"),
          ),
          ListTile(
            title: Text("Asareel Don Peña"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/don.JPG')),
            subtitle: Text("Front-End Developer"),
          ),
          ListTile(
            title: Text("Lloyd Vincent Singayan"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/lloyd.JPG')),
            subtitle: Text("Front-End Developer"),
          ),
          ListTile(
            title: Text("Gerarld Agbon"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/gerarld.JPG')),
            subtitle: Text("Front-End Developer"),
          ),
          ListTile(
            title: Text("Christian De Asis"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/christian.JPG')),
            subtitle: Text("Senior Back-End Developer"),
          ),
          ListTile(
            title: Text("Mark Rywell Gaje"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/mark.jpg')),
            subtitle: Text("Senior Back-End Developer"),
          ),
          ListTile(
            title: Text("Ernest James Usaraga"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/tommy.JPG')),
            subtitle: Text("Back-End Developer"),
          ),
          ListTile(
            title: Text("Chelsea Shaira Tibudan"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/chelsea.JPG')),
            subtitle: Text("QA Tester"),
          ),
          ListTile(
            title: Text("Jon Clark Paner"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/jon.JPG')),
            subtitle: Text("QA Tester"),
          ),
          ListTile(
            title: Text("Jacques Caesar Salalima"),
            leading: CircleAvatar (backgroundImage: AssetImage('assets/jack.JPG')),
            subtitle: Text("QA Tester"),
          ),
        ],

      ),


    );
  }
}
