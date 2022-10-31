import 'package:flutter/material.dart';
import 'package:practice/custom_widgets/navigation_drawer_widget.dart';
import 'package:practice/custom_widgets/navigation_endDrawer_widget.dart';
import 'package:practice/members.dart';
import 'package:practice/user_page.dart';

class FourthYear extends StatefulWidget {

  const FourthYear({Key? key}) : super(key: key);

  @override
  State<FourthYear> createState() => _FourthYearState();
}

class _FourthYearState extends State<FourthYear> {

  List <Member> interns = [];

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
