import 'package:flutter/material.dart';
import 'package:fooddeck/screens/iteminfo.dart';

// ignore: must_be_immutable
class menu extends StatefulWidget {
  String menuname;
  menu ({super.key,required this.menuname});

  @override
  State<menu> createState() => _menuState();
}
 List <String> f_list=[
    "assets/images/f1.png",
    "assets/images/f2.png",
    "assets/images/f3.png",
    "assets/images/f4.png",
    "assets/images/f5.png",
    "assets/images/f6.png",
    "assets/images/f7.png",
    "assets/images/f3.png",
  ];
   List <String> f_listname=['Sandwich','rolls','a1','a2','a3','a4','a5','a6'];
   List <String> f_listcost=['200','200','200','200','200','200','300','400'];

     itemgrid(context,hght,wid,img,text1,text2){
    return Stack(
       children: [
        Container(height:  wid*0.47, width: wid*0.47,
        child: Image.asset(img,fit: BoxFit.cover,),),
        Container(height: hght*0.1,width: wid*0.4,color: Colors.black.withOpacity(0.7),margin: EdgeInsets.only(top: hght*0.12,left: 10),
        child: Column(mainAxisAlignment: MainAxisAlignment.end,children: [
          Container(child: Text(text1,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: AutofillHints.birthday),),),
          Container(child: Row(children: [
            Container(child: IconButton(
                      onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>iteminfo( ) ));
                      },
                      icon: Icon(Icons.add,color: Colors.white,size: 25))),
            Container(child: Text(text2,style: TextStyle(color: Colors.white,fontSize: 15),),),
            
          ],),)
        ],),),
        //
       ],
    );
  }

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    var mylist={'itemimage': f_list,'itemname': f_listname,'itemcost':f_listcost};
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text(widget.menuname),),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,child: Column(children: [for(int i =0;i<f_list.length;i++)Row(children: [
      Padding(padding:  itemgrid(context, hght, wid, f_list[i], f_listname[i],f_listcost[i])), 
          ],)],)),
    );
  }
}