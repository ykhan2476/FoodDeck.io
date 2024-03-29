// ignore_for_file: unused_local_variable, unused_label
import 'package:flutter/material.dart';
import 'package:fooddeck/components/theme.dart';
import 'package:fooddeck/screens/foodmenu.dart';

// ignore: must_be_immutable
class container1 extends StatefulWidget {
  String? image;
  String? name;
  String? location;
  String? descript;
  container1({super.key,this.image,this.name,this.location,this.descript});
    
  @override
  State<container1> createState() => _container1State();
}

class _container1State extends State<container1> {
    GlobalKey<ScaffoldState> scaff = GlobalKey<ScaffoldState>();
    

  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    
    key:scaff;

    return Container( height:wid*0.64,width: wid*0.92,margin: EdgeInsets.all(5),
    decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15),color: Color.fromARGB(255, 255, 254, 254),),
     child:Column(children: [
            Container(height: wid*0.4 ,width:wid*0.92,margin: EdgeInsets.all(5),child: Stack(children: [
              Container( margin:EdgeInsetsDirectional.all(5),height:  wid*0.4,width: wid*0.94,
                         clipBehavior: Clip.antiAlias,decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(15))
                        ,child:Image.asset('${widget.image}',fit: BoxFit.cover,)),
              Container(height:  wid*0.39,width: wid*0.9,child:IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>foodmenu(image:widget.image,name:widget.name,location:widget.location,descript:widget.descript)))
                        ,icon: Icon(Icons.arrow_circle_right,size: 40,color: Colors.white,)) ,)
                      
            ],),),           
            Container(height: hght*0.03,width:wid*0.85,child: Text('${widget.name}',style: TextStyle(fontSize: 20,),),),
            Container(height: hght*0.02,margin: EdgeInsets.only(top:1),width:wid*0.85,child: Text('${widget.location}',style: TextStyle(fontSize: 15),),) ,
            Container(height: hght*0.04,margin: EdgeInsets.only(top:1),width:wid*0.85,child: Text('${widget.descript}',style: TextStyle(fontSize: 13),),) , 
    ],),);
    /*return Container(decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),color: const Color.fromARGB(255, 255, 254, 254),),
      height:wid*0.31,width: wid*0.9,margin: EdgeInsetsDirectional.all(15),
      child: Row(children: [
                   Column(children: [Container(margin:EdgeInsetsDirectional.all(10),height: wid*0.25,width: wid*0.2,clipBehavior: Clip.antiAlias,decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20))
                               ,child: Image.asset('${widget.image}',fit: BoxFit.cover,),)],),
                   Column(children: [
                         Row(children: [Container(height:wid*0.141,width: wid*0.5,margin:EdgeInsets.only(top: 15),
                              decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10) ),child: Text('${widget.name}',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))],),
                         Row(children: [Container(height:wid*0.1,width: wid*0.5,margin:EdgeInsetsDirectional.only(top:0),
                              decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10) ), child: Text('${widget.location}'),)],),
                   ],),
                   Column(children: [Container(height: wid*0.25,width: wid*0.1,child:IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>foodmenu(image:widget.image,name:widget.name,location:widget.location,descript:widget.descript)))
                                     //description(list: nano),
                                          
                    ,icon: Icon(Icons.arrow_circle_right,size: 40,)) ,)],)
                   ],),
    );
    
    margin:EdgeInsetsDirectional.all(5),height:  wid*0.4,width: wid*0.94,
                         clipBehavior: Clip.antiAlias,decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(7))
                        ,child: Image.asset('${widget.image}',fit: BoxFit.cover,),
                        Image.asset('${widget.image}',fit: BoxFit.cover,),*/
    
  }
}