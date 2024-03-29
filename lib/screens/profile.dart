
import 'package:flutter/material.dart';
import 'package:fooddeck/screens/cart.dart';
import 'package:fooddeck/screens/homescreen.dart';
import 'package:fooddeck/screens/login.dart';
import 'package:fooddeck/screens/wishlist.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}
container3(hght,wid){
  return Container(height:hght*0.1 ,width: wid,margin: EdgeInsets.all(2),child: Row(children: [
          Container(height:hght*0.1 ,width: wid*0.85,margin: EdgeInsets.only(left: 14),child:Text('data')),
          Container(height:hght*0.1 ,width: wid*0.1,child:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_right)))
          ],),);
}
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        
      Container(height: hght*0.93,width: wid,child: SingleChildScrollView(scrollDirection: Axis.vertical,child: Column(children: [
      Container(height:hght*0.22,width: wid,color: Color.fromARGB(255, 220, 80, 16),
        child:SafeArea(child:  Row(children: [
          Container(height: hght*0.15,width: hght*0.15,margin: EdgeInsets.only(left: 10),clipBehavior: Clip.antiAlias,
                   decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(60)),
                   child: Image.asset('assets/images/p4.png',fit: BoxFit.cover,),),
          Container(height: hght*0.15,width:wid*0.4,margin: EdgeInsets.only(left: 10),child: Column(children: [
                        Container(height:hght*0.05 ,width: wid*0.4,child: Text('NAME',style: TextStyle(fontSize: 25),),),
                        Container(height:hght*0.05 ,width: wid*0.4,child: Text('GMAIL',style: TextStyle(fontSize: 20),)),
                        Container(height:hght*0.05 ,width: wid*0.4,child: Text('PHONE NO.')),],),),
          Container(height: hght*0.15,width:wid*0.2,child: TextButton(onPressed: (){}, child: Text('Edit')),),
      ],),)),
      for(int i=0;i<9;i++)container3(hght, wid) ,
      Container(height: hght*0.06,width: wid*0.8,margin:EdgeInsets.all(20),
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color:Colors.black12 ),
      child: TextButton(onPressed: (){  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const login()));}, child: Text('LOGOUT')),)

      ],),),),
      Container(height: hght*0.07,width: wid,color: const Color.fromARGB(157, 158, 158, 158),
                                                                              child: Row(children: [
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen())), icon:Icon(Icons.home)),),
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>cart())), icon:Icon(Icons.shopping_cart)),),
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>wishList())), icon:Icon(Icons.loyalty)),),
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>profile())), icon:Icon(Icons.account_box)),),
                                                                              ],),), 
                                                                              ]));
  }
}