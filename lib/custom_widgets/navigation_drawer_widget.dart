import 'package:practice/core_members.dart';
import 'package:practice/prog_var.dart';
import 'package:flutter/material.dart';
import 'package:practice/interns.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
        padding: const EdgeInsets.only(top: 36),
        width: MediaQuery.of(context).size.width * 0.60,
        child: Drawer(
            child: Container(
                child: ListView (
                  padding: EdgeInsets.zero,
                  children: [
                    Column(
                      children: [
                       Container(
                            color: Colors.yellow[700],
                            width: 250,
                            height: 70.0,
                            child: const DrawerHeader (
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  image: DecorationImage(
                                      image: AssetImage("assets/coverPhoto.png"),
                                      fit: BoxFit.cover)
                              ),
                              //box decoration
                              margin: EdgeInsets.zero,
                              child: Text(''),
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

                        Column(
                          children: [
                            ExpansionTile(
                              title: const Text('Members'),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:20),
                                  child: ListTile(
                                    title:
                                    const Text("Core Members",
                                      style: TextStyle(),
                                    ),
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        return const CoreMembers(title: "Core Members");
                                      }));
                                    },
                                  ),
                                ),

                                Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: ListTile(
                                      title:
                                      const Text("Interns",
                                        style: TextStyle(),
                                      ),
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                          return const Interns(title: "Intern Members");
                                        }));
                                      },
                                    )
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
            )
        )
    );


  }

}