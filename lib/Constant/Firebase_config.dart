import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:exploreandtrip/Controller/AuthController.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

var firebase_auth = FirebaseAuth.instance;
var firebase_Storage = FirebaseStorage.instance;
var fireStore = FirebaseFirestore.instance;

//Controller
User? currentUser = firebase_auth.currentUser;
var authController = AuthController.instance;
