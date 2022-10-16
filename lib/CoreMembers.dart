// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:practice/navigation_drawer_widget.dart';
import 'package:practice/user_page.dart';

class User {
  final String name;
  final String position;
  final String Avatar;

  const User({
    required this.name,
    required this.position,
    required this.Avatar,
  });
}

class CoreMembers extends StatefulWidget {
  const CoreMembers({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<CoreMembers> createState() => _CoreMembersState();
}

class _CoreMembersState extends State<CoreMembers> {
  List<User> users = [
    const User(
      name: 'Angel Rose Naval',
      position: 'CEO',
      Avatar: 'assets/core/angel.jpg'
    ),
    const User(
        name: 'Joshua Ryle Bracho',
        position: 'COO',
        Avatar: 'assets/core/joshua.jpg'
    ),
    const User(
        name: 'Charles Sabuero',
        position: 'Creative Director',
        Avatar: 'assets/core/charles.jpg'
    ),
    const User(
        name: 'Deborah Jane Auguis',
        position: 'Senior Front-End Developer',
        Avatar: 'assets/core/jane.jpg'
    ),
    const User(
        name: 'John Ray Cañete',
        position: 'Front-End Developer',
        Avatar: 'assets/core/johnray.jpg'
    ),
    const User(
        name: 'Asareel Don Peña',
        position: 'Front-End Developer',
        Avatar: 'assets/core/don.JPG'
    ),
    const User(
        name: 'Gerarld Agbon',
        position: 'Front-End Developer',
        Avatar: 'assets/core/agbon.jpg'
    ),
    const User(
        name: 'Lloyd Vincent Singayan',
        position: 'Front-End Developer',
        Avatar: 'assets/core/lloyd.JPG'
    ),
    const User(
        name: 'Christian De Asis',
        position: 'Senior Back-End Developer',
        Avatar: 'assets/core/christian.jpg'
    ),
    const User(
        name: 'Mark Rywell Gaje',
        position: 'Senior Back-End Developer',
        Avatar: 'assets/core/mark.jpg'
    ),
    const User(
        name: 'Ernest James Usaraga',
        position: 'Back-End Developer',
        Avatar: 'assets/core/tommy.jpg'
    ),
    const User(
        name: 'John Christian Los Baños',
        position: 'Back-End Developer',
        Avatar: 'assets/core/los_banos.jpg'
    ),
    const User(
        name: 'Chelsea Shaira Tibudan',
        position: 'QA Tester',
        Avatar: 'assets/core/chelsea.jpg'
    ),
    const User(
        name: 'Jon Clark Paner',
        position: 'QA Tester',
        Avatar: 'assets/core/jon.jpg'
    ),
    const User(
        name: 'Jacques Caesar Salalima',
        position: 'Multimedia',
        Avatar: 'assets/core/jack.JPG'
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.indigo[900],
        title: const Text("Core Members"),
        /*leading: Builder(builder: (BuildContext context) {
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

        ),*/
        actions: const [
          Padding(padding:EdgeInsets.only(right: 10),
          child:Icon(Icons.person))
        ],
      ),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(user.Avatar),
              ),
              title: Text(user.name),
              subtitle: Text(user.position),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserPage(user: user),
                ));
              },
            ),
          );
        }
      ),

    );

  }
}


