import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddeck/screens/homescreen.dart';
import 'package:fooddeck/screens/login.dart';


class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  void initState(){
    super.initState();
    _navigatehome();
 //y dusri screen k baad splash screen vps na aane k liye
  }

  _navigatehome()async{
     
    
     //firebase auth initialise krega
    FirebaseAuth _auth = FirebaseAuth.instance;
    //currrent user ka data dega
    final user = _auth.currentUser;
   
    //agar user login h already to app k andar jaega
    if (user != null){
        //await Future.delayed(Duration(seconds: 1), () {});
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => const homescreen()));
    }
    //varna login screen p jaega
    else{
       await Future.delayed(Duration(seconds: 1), () {});
        Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => const login()));
    }

  }
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return  Scaffold(body: SafeArea(child:Stack(children: [
        Container(height: hght ,width: wid,child: Image.asset('',fit:BoxFit.cover),),
        Container(height: hght ,width: wid,child: Center(child: CircularProgressIndicator(),),),
        
       ],)));}
        //Image.asset('assets/images/splash.png',fit: BoxFit.cover,)
}






















































