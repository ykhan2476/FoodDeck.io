import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddeck/components/theme.dart';
import 'package:fooddeck/screens/iteminfo.dart';

import 'package:fooddeck/screens/splash.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 /* await Firebase.initializeApp(options: FirebaseOptions(
    apiKey:"AIzaSyBv0P3txd_Q3xpi7TEIW-iCXi9CoPFvKM0" ,
     appId: "1:624817020162:android:f3b211de9654b6aaafb61b",
      messagingSenderId:"624817020162" , 
      projectId: "fees-ce3dd"));*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: theme(),
      home: const splash(),
      debugShowCheckedModeBanner: false,
    
    );
     
  }}
      

