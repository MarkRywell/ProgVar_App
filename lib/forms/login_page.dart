import 'package:flutter/material.dart';
import 'package:practice/prog_var.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(top: 100),
        color: Colors.amber[200],
        child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 30),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    CircleAvatar(
                        backgroundImage: AssetImage('assets/logo1.png'),
                        backgroundColor: Colors.amber[200],
                        radius: 100,
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 15, top: 40, bottom: 20),
                      child: Row(
                        children: [
                          Text("Member Login ",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: TextFormField(
                          controller: usernameController,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Username"
                          ),
                          validator: (value) {
                            return value == null || value.isEmpty ? 'Username is Required' : null;
                          }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Password"
                          ),
                          validator: (value) {
                            return value == null || value.isEmpty ? 'Password is Required' : null;
                          }
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 312,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            if(formKey.currentState!.validate()){
                            }
                          },
                          child: Text("LOGIN")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (context) => ProgVar(title: "Guest Mode")),
                                        (route) => false);
                              },
                              child: Text("Continue as Guest",
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 120)
                  ],
                ),
              )
          ),
        ),
      );
  }
}
