import 'package:flutter/material.dart';
import 'package:practice/CoreMembers.dart';

class UserPage extends StatelessWidget {
  final User user;

  const UserPage({
    Key? key,
    required this.user,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text(user.name),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              user.Avatar,
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Halu Ferson!",
              style: const TextStyle(
                fontSize: 25,
            )
            )
          ],
        ),
      )
    );
  }

}