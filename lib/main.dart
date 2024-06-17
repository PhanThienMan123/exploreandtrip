import 'package:exploreandtrip/Pages/InformationPlane.dart';
import 'package:exploreandtrip/Pages/LoginPage.dart';
import 'package:exploreandtrip/Pages/Plane.dart';
import 'package:exploreandtrip/Pages/ReviewScreen.dart';
import 'package:exploreandtrip/Pages/SignUpScreen.dart';
import 'package:exploreandtrip/Pages/SplashScreen.dart';
import 'package:exploreandtrip/Service/Authcontroller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyInformation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
