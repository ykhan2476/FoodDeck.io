// ignore_for_file: unused_import


import 'package:flutter/material.dart';
import 'package:fooddeck/components/drawersection.dart';
import 'package:fooddeck/screens/cart.dart';
import 'package:fooddeck/screens/homescreen.dart';
import 'package:fooddeck/screens/iteminfo.dart';
import 'package:fooddeck/screens/profile.dart';
import 'package:fooddeck/screens/wishlist.dart';

class drawermenu extends StatefulWidget {
  
   drawermenu({super.key});

  @override
  State<drawermenu> createState() => _drawermenuState();
}

class _drawermenuState extends State<drawermenu> {


  
  @override
  
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return  Container(height:hght ,width: wid*0.84,child:ListView(children: [
                      Row(children: [Container(height: hght*0.15,width:wid*0.844,
                                child: Column(children: [
                                      Row(children:[Container(height:hght*0.1,width:wid*0.2,child: Icon(Icons.local_cafe),margin: EdgeInsets.only(bottom: 0),),
                                                      Container(height:hght*0.1,width:wid*0.42,margin: EdgeInsets.only(top: 35),
                                                               child: Text("FOOD DECK",style:TextStyle(fontSize: 24,),),),
                                                      Container(height:hght*0.1,width:wid*0.2,child: Icon(Icons.close),margin: EdgeInsets.only(bottom: 0),)],),
                                ],),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.7,child: drawersection( name: 'home',func: homescreen()),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.7,child: drawersection( name: 'Wishlist',func:wishList()),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.7,child: drawersection( name: 'Cart',func:cart()),)],),
                      Row(children: [Container(height: hght*0.06,width:wid*0.7,child: drawersection( name: 'Account',func:profile()),)],),
                     Row(children: [Container(height: hght*0.06,width:wid*0.7,child: drawersection( name: 'iteminfo',func:iteminfo()),)],),
                      ])
    ,)
    ;
  }
}//