import 'package:practice/core_members.dart';
import 'package:practice/prog_var.dart';
import 'package:flutter/material.dart';
import 'package:practice/tabs/first_year.dart';
import 'package:practice/tabs/fourth_year.dart';
import 'package:practice/tabs/second_year.dart';
import 'package:practice/tabs/third_year.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context){

    Size size = MediaQuery.of(context).size;

        return SafeArea(
          child: Drawer(
            width: MediaQuery.of(context).size.width * 0.60,
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
                                      child: ExpansionTile(
                                        title:
                                        const Text("Interns",
                                          style: TextStyle(),
                                        ),
                                        childrenPadding: EdgeInsets.zero,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left:20),
                                            child: SizedBox(
                                              height: 40,
                                              child: ListTile(
                                                title: const Text("1st Year"),
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                    return const FirstYear();
                                                  }));
                                                },
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left:20),
                                            child: SizedBox(
                                              height: 40,
                                              child: ListTile(
                                                title: const Text("2nd Year"),
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                    return const SecondYear();
                                                  }));
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:20),
                                            child: SizedBox(
                                              height: 40,
                                              child: ListTile(
                                                title: const Text("3rd Year"),
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                    return const ThirdYear();
                                                  }));
                                                },
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:20, bottom: 10),
                                            child: SizedBox(
                                              height: 40,
                                              child: ListTile(
                                                title: const Text("4th Year"),
                                                onTap: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                    return const FourthYear();
                                                  }));
                                                },
                                              ),
                                            )
                                          ),
                                        ],
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
              ),
        );

  }

}