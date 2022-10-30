import 'package:flutter/material.dart';
import 'package:practice/members.dart';
import 'package:practice/user_page.dart';

class SecondYear extends StatefulWidget {
  const SecondYear({Key? key}) : super(key: key);

  @override
  State<SecondYear> createState() => _SecondYearState();
}

class _SecondYearState extends State<SecondYear> {

  List<Member> interns = const[
    Member(
        name: "Dan Joshua Tagaan",
        position: "Intern - Back-End Developer",
        avatar: "assets/interns/dan.jpg"
      ),
    Member(
        name: "Kate Danica Baul",
        position: "Intern - Back-End Developer",
        avatar: "assets/interns/kate.jpg"
    ),
    Member(
        name: "Selwyn Dagamac",
        position: "Intern - Back-End Developer",
        avatar: "assets/interns/selwyn.jpg"
    ),
    Member(
        name: "Hennah Llamas",
        position: "Intern - Back-End Developer",
        avatar: "assets/interns/hennah.jpg"
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
