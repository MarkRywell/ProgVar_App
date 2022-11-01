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
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: usernameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Username: "
              ),
              validator: (value) {
                return value == null || value.isEmpty ? 'Username is Required' : null;
              }
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Password: "
              ),
                validator: (value) {
                  return value == null || value.isEmpty ? 'Password is Required' : null;
                }
            ),
            ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){

                  }
                },
                child: Text("LOGIN"))
          ],
        ),
      )
    );
  }
}
