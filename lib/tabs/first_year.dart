import 'package:flutter/material.dart';
import 'package:practice/members.dart';
import 'package:practice/user_page.dart';

class FirstYear extends StatefulWidget {
  const FirstYear({Key? key}) : super(key: key);

  @override
  State<FirstYear> createState() => _FirstYearState();
}

class _FirstYearState extends State<FirstYear> {

  List<Member> interns = const[
    Member(
      name: "Angelo Reychie Alejo",
      position: "Intern - Back-End Developer",
      avatar: "assets/interns/angelo.jpg"
    ),
    Member(
        name: "Harold Adrian Tabacoan",
        position: "Intern - Back-End Developer",
        avatar: "assets/interns/harold.jpg"
    ),
    Member(
        name: "Neil Jan Dinglasa",
        position: "Intern - Front-End Developer",
        avatar: "assets/interns/neil.jpg"
    ),
    Member(
        name: "Nicah Vril Barrita",
        position: "Intern - Front-End Developer",
        avatar: "assets/interns/nicah.jpg"
    ),
    Member(
        name: "Janeth Musong Bactong",
        position: "Intern",
        avatar: "assets/interns/janeth.jpg"
    ),
    Member(
        name: "Nataniel Perez",
        position: "Intern - Back-End Developer",
        avatar: "assets/interns/nathan.jpg"
    ),
    Member(
        name: "Sherri Nicole Tilan",
        position: "Intern - Front-End Developer",
        avatar: "assets/interns/sherri.jpg"
    ),
    Member(
        name: "Janith Comaling",
        position: "Intern - Front-End Developer",
        avatar: "assets/interns/janith.jpg"
    ),
    Member(
        name: "Clive Francis Clavacio",
        position: "Intern",
        avatar: "assets/progvarLogo.png",
    ),
    Member(
        name: "Michelle Mae Dangazo",
        position: "Intern - Back-End Developer",
        avatar: "assets/progvarLogo.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: interns.length,
        itemBuilder: (context, index) {
          final intern = interns[index];

          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(intern.avatar)
              ),
              title: Text(intern.name),
              subtitle: Text(intern.position),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserPage(user: intern),
                ));
              },
            ),
          );
        }
      )
    );
  }
}
