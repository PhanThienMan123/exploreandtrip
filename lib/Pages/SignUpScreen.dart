import 'package:exploreandtrip/Constant/Connect.dart';
import 'package:exploreandtrip/Models/Users.dart';
import 'package:exploreandtrip/Pages/InformationPlane.dart';
import 'package:exploreandtrip/Service/Authcontroller.dart';
import 'package:exploreandtrip/Service/Connection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _sex = TextEditingController();
  final _phonenumber = TextEditingController();
  Future<Account>? _futureAccount;
  bool? isCheck = false;
  var controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Form(
                child: Container(
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      controller: _email,
                      decoration: InputDecoration(hintText: "Enter Email"),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _username,
                      decoration: InputDecoration(hintText: "Enter Username"),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _phonenumber,
                      decoration:
                          InputDecoration(hintText: "Enter Phonenumber"),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _sex,
                      decoration: InputDecoration(hintText: "Enter Sex"),
                    ),
                  ),
                  Container(
                    child: TextFormField(
                      controller: _password,
                      decoration: InputDecoration(hintText: "Enter Password"),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          _futureAccount = DataService().Register(
                              _username.text,
                              _password.text,
                              _email.text,
                              _phonenumber.text,
                              _sex.text);
                        });
                        // if (isCheck != false) {
                        //   try {
                        //     await controller.RegiterUser(
                        //             context: context,
                        //             email: _email.text,
                        //             password: _password.text)
                        //         .then(
                        //       (value) {
                        //         VxToast.show(context,
                        //             msg: "Sign up Successfully");
                        //         Get.offAll(() => MyInformation());
                        //       },
                        //     );
                        //   } catch (e) {
                        //     firebase_auth.signOut();
                        //     VxToast.show(context, msg: e.toString());
                        //   }
                        // }
                      },
                      child: Text("Sign up"))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
