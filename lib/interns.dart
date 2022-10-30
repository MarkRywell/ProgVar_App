import 'package:flutter/material.dart';
import 'package:practice/custom_widgets/navigation_drawer_widget.dart';
import 'package:practice/custom_widgets/navigation_endDrawer_widget.dart';
import 'package:practice/tabs/first_year.dart';
import 'package:practice/tabs/second_year.dart';
import 'package:practice/tabs/third_year.dart';
import 'package:practice/tabs/fourth_year.dart';

class Interns extends StatefulWidget {
  const Interns({Key? key, required this.title }) : super(key: key);

  final String title;

  @override
  State<Interns> createState() => _InternsState();
}

class _InternsState extends State<Interns> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState(){
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      endDrawer: const NavigationEndDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.indigo[900],
        title: const Text("Interns"),
        bottom: TabBar(
          controller: tabController,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          isScrollable: true,
          tabs: const [
            Tab(text:"1st Year"),
            Tab(text:"2nd Year"),
            Tab(text:"3rd Year"),
            Tab(text:"4th Year")
          ]
        ),
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
      body: TabBarView(
        controller: tabController,
        children: const [
          FirstYear(),
          SecondYear(),
          ThirdYear(),
          FourthYear()
        ],
      ),
    );
  }
}
