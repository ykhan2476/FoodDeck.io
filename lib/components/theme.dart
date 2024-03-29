import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    primarySwatch:Colors.teal,
    primaryColorDark: Color.fromARGB(25, 101, 103, 100),
    primaryColor: Color.fromRGBO(25, 141, 145, 100),
    primaryColorLight:  Color.fromARGB(255, 226, 230, 232),
    textTheme:  TextTheme(
     headline1: TextStyle(fontSize: 20,color: Colors.amber),
    headline2: TextStyle(fontSize: 10,color:Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(hintStyle: TextStyle(color: Colors.black),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(width:1,color: Colors.black,),),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width:3,color: Colors.black)),),
  );
}

