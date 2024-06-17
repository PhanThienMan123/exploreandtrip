import 'package:exploreandtrip/Constant/Connect.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Future<UserCredential?> LoginUser({context}) async {
    UserCredential? userCre;

    try {
      userCre = await firebase_auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCre;
  }

  Logout(context) async {
    try {
      await firebase_auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }

  Future<UserCredential?> RegiterUser({email, password, context}) async {
    UserCredential? userCren;
    try {
      userCren = await firebase_auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCren;
  }
}
