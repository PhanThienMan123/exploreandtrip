import 'package:exploreandtrip/Constant/Firebase_config.dart';
import 'package:exploreandtrip/Controller/AuthController.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _username = TextEditingController();
    TextEditingController _password = TextEditingController();
    TextEditingController _phonenumber = TextEditingController();
    TextEditingController _address = TextEditingController();
    TextEditingController _sex = TextEditingController();
    // ignore: unused_local_variable
    var controller = Get.put(AuthController());
    return Scaffold(
        body: Form(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  child: Text("Register"),
                ),
                Container(
                  child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                        hintText: "Email", border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  child: TextFormField(
                    controller: _username,
                    decoration: InputDecoration(
                        hintText: "Username", border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  child: TextFormField(
                    controller: _password,
                    decoration: InputDecoration(
                        hintText: "Password", border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  child: TextFormField(
                    controller: _phonenumber,
                    decoration: InputDecoration(
                        hintText: "Phonenumber", border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  child: TextFormField(
                    controller: _address,
                    decoration: InputDecoration(
                        hintText: "address", border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  child: TextFormField(
                    controller: _sex,
                    decoration: InputDecoration(
                        hintText: "sex", border: OutlineInputBorder()),
                  ),
                ),
                Container(
                    child: ElevatedButton(
                        onPressed: () {
                          authController.Register(
                              _email.text,
                              _username.text,
                              _password.text,
                              _phonenumber.text,
                              _address.text,
                              _sex.text);
                        },
                        child: Text("Sign up"))),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
