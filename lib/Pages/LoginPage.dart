import 'package:flutter/material.dart';

class Mylogin extends StatelessWidget {
  const Mylogin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    TextEditingController _password = TextEditingController();
    TextEditingController _email = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Text("Login"),
            ),
            Container(
              child: TextFormField(
                controller: _username,
                decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            Container(
              child: TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            Container(
              child: TextFormField(
                controller: _password,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            Container(
              child: ElevatedButton(onPressed: () {}, child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
