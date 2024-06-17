import 'dart:convert';

import 'package:exploreandtrip/Models/Users.dart';
import 'package:exploreandtrip/Pages/InformationPlane.dart';
import 'package:exploreandtrip/Service/Connection.dart';
import 'package:exploreandtrip/Service/Authcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  var controller = Get.put(AuthController());
  bool IshidePassword = true;
  @override
  Widget build(BuildContext context) {
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
                controller: controller.emailController,
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            Container(
              child: TextFormField(
                controller: controller.passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            IshidePassword = !IshidePassword;
                          });
                        },
                        icon: Icon(IshidePassword
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () async {
                    await controller.LoginUser(context: context).then((value) {
                      if (value != null) {
                        VxToast.show(context, msg: "Login Successfully");
                        Get.offAll(() => MyInformation());
                      } else {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => WillPopScope(
                            child: AlertDialog(
                              title: Text("Nofications"),
                              content: Text("Email or password is wrong"),
                            ),
                            onWillPop: () async => false,
                          ),
                        );
                      }
                    });
                  },
                  child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}
