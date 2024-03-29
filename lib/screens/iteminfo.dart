
import 'package:flutter/material.dart';
import 'package:fooddeck/components/drawermenu.dart';
import 'package:fooddeck/screens/cart.dart';

// ignore: must_be_immutable
class iteminfo extends StatefulWidget {
  
   iteminfo({super.key});

  @override
  State<iteminfo> createState() => _iteminfoState();
}

class _iteminfoState extends State<iteminfo> {
 
  List Cart=[];

 add_to_cart(item){
   Cart.add(item);
   
  }
  @override
  Widget build(BuildContext context) {
    
    //GlobalKey<ScaffoldState> scaff1 = GlobalKey<ScaffoldState>();
  @override
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    var a1 ='assets/images/f1.png';
    return Scaffold(
     // key: scaff1,
     // drawer: Drawer(child: SingleChildScrollView(scrollDirection: Axis.vertical,child: drawermenu(),),),
      body:SafeArea(child: Column(children: [
          Stack(children: [ 
            Container(height: hght*0.65,width: wid,clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(180, 40))),
                  child: Image.asset(a1,fit: BoxFit.cover,),),
            ]),
       
        Container(height: hght*0.1,width:wid,margin: EdgeInsets.only(left: 30),child: Text('sandwich',style: TextStyle(fontSize: 40,),),),
        Container(height: hght*0.05,width:wid,margin: EdgeInsets.only(left: 30),child: Text('100',style: TextStyle(fontSize: 20,),),),
        Container(height: hght*0.05,width:wid*0.3,child: TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>cart())), child:Text('add to cart +'))),
       ]
      ),


      )
    );
  }
}