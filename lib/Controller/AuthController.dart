import 'dart:convert';

import 'package:exploreandtrip/Constant/Connect.dart';
import 'package:exploreandtrip/Constant/Firebase_config.dart';
import 'package:exploreandtrip/Models/Users.dart' as models;
import 'package:exploreandtrip/Pages/InformationPlane.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as https;

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  late Rx<User?> _user;

  void Register(String email, String username, String password,
      String phonenumber, String address, String sex) async {
    try {
      if (email.isNotEmpty &&
          username.isNotEmpty &&
          password.isNotEmpty &&
          phonenumber.isNotEmpty &&
          address.isNotEmpty &&
          sex.isNotEmpty) {
        UserCredential cred = await firebase_auth
            .createUserWithEmailAndPassword(email: email, password: password);
        models.User user = models.User(
            uid: cred.user!.uid,
            username: username,
            password: password,
            email: email,
            phonenumber: phonenumber,
            sex: sex);
        await fireStore
            .collection('users')
            .doc(cred.user!.uid)
            .set(user.toJson());
        Get.offAll(MyInformation());
      } else {
        Get.snackbar("Error Creating", "Pls");
      }
    } catch (e) {
      firebase_auth.signOut();
      Get.snackbar("Error", e.toString());
    }
  }
}
