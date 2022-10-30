import 'package:flutter/material.dart';
import 'package:practice/members.dart';
import 'package:practice/user_page.dart';

class ThirdYear extends StatefulWidget {

  const ThirdYear({Key? key}) : super(key: key);

  @override
  State<ThirdYear> createState() => _ThirdYearState();
}

class _ThirdYearState extends State<ThirdYear> {

  List<Member> interns = const[
    Member(
        name: "Krishia Ocampo",
        position: "Intern",
        avatar: "assets/interns/krishia.jpg"
    ),
    Member(
        name: "Clint Egargo",
        position: "Intern - Back-End Developer",
        avatar: "assets/progvarLogo.png"
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
