// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:practice/custom_widgets/navigation_drawer_widget.dart';
import 'package:practice/custom_widgets//navigation_endDrawer_widget.dart';
import 'package:practice/user_page.dart';
import 'package:practice/members.dart';

class CoreMembers extends StatefulWidget {
  const CoreMembers({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<CoreMembers> createState() => _CoreMembersState();
}

class _CoreMembersState extends State<CoreMembers> {
  List<Member> users = [
    const Member(
      name: 'Angel Rose Naval',
      position: 'Chief Executive Officer',
      avatar: 'assets/core/angel.jpg'
    ),
    const Member(
        name: 'Joshua Ryle Bracho',
        position: 'Chief Operation Officer',
        avatar: 'assets/core/joshua.jpg'
    ),
    const Member(
        name: 'Charles Sabuero',
        position: 'Creative Director',
        avatar: 'assets/core/charles.jpg'
    ),
    const Member(
        name: 'Deborah Jane Auguis',
        position: 'Senior Front-End Developer',
        avatar: 'assets/core/jane.jpg'
    ),
    const Member(
        name: 'Asareel Don Peña',
        position: 'Senior Front-End Developer',
        avatar: 'assets/core/don.JPG'
    ),
    const Member(
        name: 'John Ray Cañete',
        position: 'Front-End Developer',
        avatar: 'assets/core/johnray.jpg'
    ),
    const Member(
        name: 'Gerarld Agbon',
        position: 'Front-End Developer',
        avatar: 'assets/core/agbon.jpg'
    ),
    const Member(
        name: 'Lloyd Vincent Singayan',
        position: 'Front-End Developer',
        avatar: 'assets/core/lloyd.JPG'
    ),
    const Member(
        name: 'Christian De Asis',
        position: 'Senior Back-End Developer',
        avatar: 'assets/core/christian.jpg'
    ),
    const Member(
        name: 'Mark Rywell Gaje',
        position: 'Senior Back-End Developer',
        avatar: 'assets/core/mark.jpg'
    ),
    const Member(
        name: 'Ernest James Usaraga',
        position: 'Senior Back-End Developer',
        avatar: 'assets/core/tommy.JPG'
    ),
    const Member(
        name: 'John Christian Los Baños',
        position: 'Back-End Developer',
        avatar: 'assets/core/los_banos.jpg'
    ),
    const Member(
        name: 'Chelsea Shaira Tibudan',
        position: 'QA Tester',
        avatar: 'assets/core/chelsea.jpg'
    ),
    const Member(
        name: 'Jon Clark Paner',
        position: 'QA Tester',
        avatar: 'assets/core/jon.jpg'
    ),
    const Member(
        name: 'Jacques Caesar Salalima',
        position: 'Multimedia Director',
        avatar: 'assets/core/jack.JPG'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      endDrawer: const NavigationEndDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.indigo[900],
        title: const Text("Core Members"),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 10),
              child: Builder(
                  builder: (context) => (
                      CircleAvatar(
                          backgroundImage: const AssetImage('assets/progvarLogo.png'),
                          backgroundColor: Colors.yellow,
                          child: InkWell(
                            child: const Icon(null),
                            onTap:(){
                              Scaffold.of(context).openEndDrawer();
                            },
                          )
                      )
                  )
              )
          )
        ],
      ),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(user.avatar),
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


