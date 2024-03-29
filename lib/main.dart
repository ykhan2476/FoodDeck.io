import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddeck/components/theme.dart';
import 'package:fooddeck/screens/iteminfo.dart';

import 'package:fooddeck/screens/splash.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
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
      

