import 'package:flutter/material.dart';
import 'package:practice/custom_widgets/navigation_drawer_widget.dart';
import 'package:practice/custom_widgets/navigation_endDrawer_widget.dart';
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
        drawer: const NavigationDrawerWidget(),
        endDrawer: const NavigationEndDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          foregroundColor: Colors.indigo[900],
          title: const Text("Interns"),
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
