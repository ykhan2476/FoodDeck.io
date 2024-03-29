import 'package:flutter/material.dart';
import 'package:fooddeck/screens/iteminfo.dart';
import 'package:fooddeck/screens/menu.dart';



class foodmenu extends StatefulWidget {
  var image,name,location,descript;
    foodmenu({super.key,this.image,this.name,this.location,this.descript});

  @override
  State<foodmenu> createState() => _foodmenuState();
}

class _foodmenuState extends State<foodmenu> {
  @override
  
  Widget build(BuildContext context) {
     List <String> d2list=[
    "assets/images/d2.png",
    "assets/images/d21.png",
    "assets/images/d22.png",
    "assets/images/d23.png",
  ];

 
  List <String> MenuImage=[
  'assets/images/m1.png',
  'assets/images/m2.png',
  'assets/images/m3.png',
  'assets/images/m4.png',
  'assets/images/m5.png',
  'assets/images/m6.png',];

  List <String> Menuname=['BREAKFAST','PASTA','PIZZA','LUNCH','COFFEE','COCKTAILS'];

    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return  SafeArea(child: Scaffold(
               body:SingleChildScrollView(scrollDirection: Axis.vertical,child:
               Column(children: [
                Container(height: hght*0.3,width: wid,child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                        child: Row(children: [for (int i=0;i<d2list.length;i++)content(hght,wid,'${widget.image}')],),),),
                Container(height: hght*0.06,width: wid,margin: EdgeInsets.only(left: 10),child: Text('${widget.name}',style:TextStyle(fontSize: 35,),),),
                Container(height: hght*0.065,width: wid,margin: EdgeInsets.only(left: 10),child: Text('${widget.location}',style:TextStyle(fontSize: 20,),),),
                Container(height: hght*0.07,width: wid,margin: EdgeInsets.only(left: 10),child: Text('${widget.descript}',style:TextStyle(fontSize: 15,),),),
                Container(height: hght*0.07,width: wid,child: Row(children: [
                      Container(height: hght*0.06,width: wid*0.1,child: IconButton(onPressed: (){}, icon:Icon(Icons.reviews)),),
                      Container(height: hght*0.06,width: wid*0.4,decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),color: Color.fromARGB(255, 193, 63, 16)),
                                child:TextButton(onPressed: (){}, child: Text('delivery'))),
                      Container(height: hght*0.06,width: wid*0.4,margin: EdgeInsets.only(left: 5),decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),color: Color.fromARGB(184, 76, 66, 104)),
                                child:TextButton(onPressed: (){}, child: Text('pickup'))),
                                                      ]),),   
                for(int i=0;i<MenuImage.length;i++)Menu(hght,wid,MenuImage[i],Menuname[i])    
                        
  ],),)) );}


check(image,menuname){
 switch (menuname){
   case "BREAKFAST":
    Navigator.push(context, MaterialPageRoute(builder: (context)=>menu(menuname: menuname) ));
   case"PASTA":
    Navigator.push(context, MaterialPageRoute(builder: (context)=>menu(menuname: menuname)));
   case"PIZZA":
    Navigator.push(context, MaterialPageRoute(builder: (context)=>menu(menuname: menuname)));
   case"LUNCH":
    Navigator.push(context, MaterialPageRoute(builder: (context)=>menu(menuname: menuname)));
   case"COFFEE":
    Navigator.push(context, MaterialPageRoute(builder: (context)=>menu(menuname: menuname)));
   case"COCKTAIL":
    Navigator.push(context, MaterialPageRoute(builder: (context)=>menu(menuname: menuname)));
 }
}
 content(hght,wid,image){
    return Container(height:hght*0.3,width:wid,color: Colors.black87,child:Image.asset(image,fit: BoxFit.cover,),);
  }

 Menu(hght,wid,image,menuname){
  return Container(height:hght*0.15,width:wid,child:Stack(children: [
    Container(height:hght*0.15,width:wid,child:Image.asset(image,fit: BoxFit.cover,)),
    Container(height:hght*0.15,width:wid,child:IconButton(
      onPressed:() {Navigator.push(context,MaterialPageRoute(builder: (context)=>check(image, menuname)),
  );}, icon:Icon(Icons.abc,color: Colors.amber.withOpacity(0),)))
  ],),);
 }


 
}






 /*(onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => check(image, menuname)),
  );
}, child:Image.asset(image,fit: BoxFit.cover,))
 
 
  content1(hght,wid,image){
    return Container(margin: EdgeInsets.all(5),child: Stack(children: [
      Container(height:hght*0.2,width:wid*0.45,clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.black87,borderRadius:BorderRadiusDirectional.circular(10)),
          child: Image.asset(image,fit: BoxFit.cover,),),
      Container(height:wid*0.2,width:wid*0.2,child: IconButton(
            onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>iteminfo(itemImage:image,))),
            icon:Icon(Icons.arrow_circle_right,size:40,color: const Color.fromARGB(255, 238, 242, 243),)),)    
          
          ],
       ),) ;
  }
  content2(hght,wid,image){
    
    return Container(margin: EdgeInsets.all(5),child: Stack(children: [
      Container(height:hght*0.3,width:wid*0.45,clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.black87,borderRadius:BorderRadiusDirectional.circular(10)),
          child: Image.asset(image,fit: BoxFit.cover,),),
      Container(height:wid*0.2,width:wid*0.2,child: IconButton(
         onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>iteminfo(itemImage:image,))), 
         icon:Icon(Icons.arrow_circle_right,size:40,color: const Color.fromARGB(255, 238, 242, 243),)),)    
          
          ],
       ),) ;
  }*/

/*decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top:Radius.circular(20))),
Column(children: [Row(children: [Container(height: hght*0.3,width: wid,
                                           child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                                                child: Row(children: [for (int i=0;i<d2list.length;i++)content(hght,wid,'${widget.image}')],),),)],),
                                       Column(children:[Container(height: hght*0.07,width: wid,margin: EdgeInsets.only(left: 10),child: Text('${widget.name}',style:TextStyle(fontSize: 35,),),),
                                                        Container(height: hght*0.07,width: wid,margin: EdgeInsets.only(left: 10),child: Text('${widget.location}',style:TextStyle(fontSize: 30,),),),
                                                        Container(height: hght*0.07,width: wid,margin: EdgeInsets.only(left: 10),child: Text('${widget.descript}',style:TextStyle(fontSize: 20,),),),
                                                        Container(height: hght*0.07,width: wid,
                                                                  child: Row(children: [
                                                                        Container(height: hght*0.06,width: wid*0.1,child: IconButton(onPressed: (){}, icon:Icon(Icons.reviews)),),
                                                                        Container(height: hght*0.06,width: wid*0.4,decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),color: Color.fromARGB(255, 193, 63, 16)),
                                                                                           child:TextButton(onPressed: (){}, child: Text('delivery'))),
                                                                        Container(height: hght*0.06,width: wid*0.4,margin: EdgeInsets.only(left: 5),decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(20),color: Color.fromARGB(184, 76, 66, 104)),
                                                                                           child:TextButton(onPressed: (){}, child: Text('pickup'))),
                                                      ]),),
                                      Column(children: [Container(height: hght*0.37,width: wid,child: SingleChildScrollView(scrollDirection: Axis.vertical,
                                                          child: Row(children: [
                                                           Column(children: [Container(height: hght*0.4,width: wid*0.5,child:SingleChildScrollView(scrollDirection: Axis.vertical,
                                                                                      child: Column(children: [
                                                                                        content1(hght,wid,'assets/images/f4.png'),
                                                                                        for(int i=0;i<f_list.length;i++)
                                                                                        content2(hght,wid,f_list[i])],),
                                                                                      ) ,)],),
                                                           Column(children: [Container(height: hght*0.4,width: wid*0.5,child: SingleChildScrollView(scrollDirection: Axis.vertical,
                                                                                      child: Column(children: [
                                                                                        for(int i=0;i<f_list.length;i++)
                                                                                        content2(hght,wid, f_list[i])],),
                                                                                      ),)],),


                                                          ],),),),],),
                                                 ],)
                       
                       
                       ],)
*/