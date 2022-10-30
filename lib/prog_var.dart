import 'package:flutter/material.dart';
import 'package:practice/custom_widgets/navigation_drawer_widget.dart';
import 'package:practice/custom_widgets/navigation_endDrawer_widget.dart';

class ProgVar extends StatefulWidget {
  const ProgVar({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<ProgVar> createState() => _ProgVarState();
}

class _ProgVarState extends State<ProgVar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      endDrawer: const NavigationEndDrawer(),
      appBar: AppBar(
        title: const Text("Programmer's Varsity"),
        backgroundColor: Colors.yellow[700],
        foregroundColor: Colors.indigo[900],
      actions: [
        Padding(padding: const EdgeInsets.only(right: 10),
            child: Builder(
              builder: (context) =>(
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
        ),

      ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.1,
                image: AssetImage('assets/ustp_logo1.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(5),
              child:
              Text("What is Programmer's Varsity?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.left),),

            Padding(padding: EdgeInsets.only(left:10, right: 10, top: 20),
                child: Text(
                  "Programmer's Varsity is a division of SITE that focuses on programming. "
                      "It is well-known for being academically inclined and having individuals "
                      "specialize in an array of skills that focuses on IT related concepts. \n"
                      "\n"
                      "The organization was established primarily to provide students a way to "
                      "support one another academically with the aim to achieve academic success on their own.",
                  style: TextStyle(fontSize: 14, ),
                  textAlign: TextAlign.justify,
                )),

          ],
        )

      )

    );
  }
}
