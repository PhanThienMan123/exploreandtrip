import 'package:exploreandtrip/Admin/Admin.dart';
import 'package:exploreandtrip/Controller/AuthController.dart';
import 'package:exploreandtrip/Pages/InformationPlane.dart';
import 'package:exploreandtrip/Pages/Plane.dart';
import 'package:exploreandtrip/Pages/Register.dart';
import 'package:exploreandtrip/Pages/ReviewScreen.dart';
import 'package:exploreandtrip/Pages/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AdminPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
