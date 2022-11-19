import 'package:flutter/material.dart';

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
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 100),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    child: TextFormField(
                        controller: usernameController,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Username: "
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
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Password: "
                        ),
                        validator: (value) {
                          return value == null || value.isEmpty ? 'Password is Required' : null;
                        }
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){

                          }
                        },
                        child: Text("LOGIN")),
                  )
                ],
              ),
            )
        ),
      )
    );
  }
}
