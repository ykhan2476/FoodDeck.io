
import 'package:flutter/material.dart';
import 'package:fooddeck/components/container1.dart';
import 'package:fooddeck/components/container2.dart';
import 'package:fooddeck/components/container3.dart';
import 'package:fooddeck/components/drawermenu.dart';
import 'package:fooddeck/screens/cart.dart';
import 'package:fooddeck/screens/profile.dart';
import 'package:fooddeck/screens/wishlist.dart';


class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  GlobalKey<ScaffoldState> scaffState = GlobalKey<ScaffoldState>();
 

 @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    List <String> d1list=[
     "assets/images/d1.png",
    "assets/images/d12.png",
    "assets//d13.png",
    "assets//d14.png",
    "assets/images/d15.png",
  ];
  List <String> d2list=[
     "assets/images/d2.png",
    "assets/images/d21.png",
    "assets/images/d22.png",
    "assets/images/d23.png",
  ];
  List <String> d3list=[
     "assets/images/d3.png",
    "assets/images/d31.png",
    "assets/images/d32.png",
    "assets/images/f1.png",
  ];
   List <String> d4list=[
     "assets/images/d4.png",
    "assets/images/d41.png",
    "assets/images/f3.png",
    "assets/images/f2.png",
  ];
   List <String> d5list=[
     "assets/images/d5.png",
    "assets/images/d51.png",
    "assets/images/f4.png",
    "assets/images/f5.png",
  ];
   List <String> d6list=[
     "assets/images/d6.png",
    "assets/images/d61.png",
    "assets/images/f6.png",
   
    "assets/images/f7.png",
  ];
  List <String> d7list=[
     "assets/images/d7.png",
    "assets/images/d71.png",
    "assets/images/d72.png",
    "assets/images/d73.png",
  ];
  var cafe={"l1": d1list,"l2": d2list,"l3": d3list,"l4": d4list,"l5": d5list,"l6": d6list,"l7": d7list,};
     List<String> name = ["Mugs Cafe", "Tamas Cafe and Kitchen", "Bar Palladio Jaipur","Cafe Quaint",
                                 "Signature cafe ", "O2 - The Plant Café", "LOUSTIC CAFE"];
  List<String>location = [
    ",Gali Number 5,Raja Park, Jaipur",
    "Gali Number 5,Raja Park, Jaipur",
    "Hotel Narain Niwas, Narayan Singh Circle, Jaipur",
    "Jawahar Kala Kendra",
    "Plot No. 01, Dhariwal Complex, opposite Ram Mandir Avadhpuri",
    "C-29, Pankaj Singhvi Marg",
    " No 1, 226, Fashion St, near Pulia, Raja Park, Jaipur, Rajasthan 302004",
  ];
  List<String> image = [
    "assets/images/d1.png",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
    "assets/images/d7.png"
  ];
  List<String> descript = [
    "Comforting Atmosphere, Food Presentation, Worth the Money",
    "Street Food, North Indian, Continental, Kebab, Pizza, Pasta, BBQ, Desserts",
    "Italian, Continental, Salad, Finger Food, Beverages, Desserts",
     "Awesome Services, Beautiful Interiors, Comforting Atmosphere,  Worth the Money",
    "Street Food, North Indian, Continental, Kebab, Pizza, Pasta, BBQ, Desserts",
    "Italian, Continental, Salad, Finger Food, Beverages, Desserts",
    "Awesome Services, Amazing Interiors, Beautiful Interiors,"
  ];

 List <String> foodimages =[
  'assets/images/burger.png',
  'assets/images/pizza.png',
  'assets/images/desserts.png',
  'assets/images/drinks.png',
  'assets/images/sandwiches.png',
  'assets/images/noodles.png',
  'assets/images/salads.png',];

 List <String> foodname =['burger','pizza','desserts','drinks','sandwiches','noodles','salads'];
 List <String> promoHead =['FLAT 40% OFF','Faasos30% OFF','Zomato50% OFF',]; 
 List <String> promotag =[
      'Flat 40% OFF on Food Orders From Zomato',
      'Flat 30% OFF On Payments Above Rs 175',
      'Get Up To Rs 150 Off using Dhani Cards',]; 
List <String> promocode =['ZOMATO','WRAPPY30','DHANIEAT'];
    return SafeArea(child:  Scaffold(
      key: scaffState,
       appBar: AppBar(title: Text("Food Deck"),
                       foregroundColor: Color.fromARGB(252, 12, 2, 2),
                      // backgroundColor: const Color.fromARGB(255, 124, 115, 154),
                       ), 
      drawer: Drawer(child: SingleChildScrollView(scrollDirection: Axis.vertical,child: drawermenu(),),),
    
      body: Column(children: [


       /* Container(color: Color.fromARGB(255, 226, 230, 232),child:Column(children: [
                                    Stack(children: [
                                      Row(children: [Container(height: hght*0.3,width: wid,
                                                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)),),
                                                              child: Image.asset('assets/images/d9.png',fit: BoxFit.cover,),)],), 
                                      Row(children: [
                                                    Container(
                                                      height: wid*0.1,
                                                      width: wid*0.1,
                                                      margin: EdgeInsets.only(left: 20),
                                                      child:IconButton(onPressed:()=>scaffState.currentState!.openDrawer(), icon: Icon(Icons.menu)),
                                                      ),
                                                  ],
                                            ),
                                                    Container(height: wid*0.2,width:wid*0.7,margin: EdgeInsets.all(40),child:Text("CAFE HOUSE",style: TextStyle(fontSize: 40,),) )],)
                                    ],),),   */    

            
            Row(children:[Container(width: wid,height:hght*0.8 ,color: Color.fromARGB(255, 226, 230, 232),
                 child:SingleChildScrollView(scrollDirection: Axis.vertical,child: Column(children: [ 
                            Row(children:[Container(width: wid,height:hght*0.15 ,color: Color.fromARGB(255, 226, 230, 232),
                                child:SingleChildScrollView(scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                 for(int i=0;i<foodimages.length;i++) container2(foodImages: foodimages[i],foodName: foodname[i],)  
                                ],), ),),],),

                            Row(children:[Container(width: wid,height:hght*0.25,color: Color.fromARGB(255, 226, 230, 232),
                                child:SingleChildScrollView(scrollDirection: Axis.horizontal,
                                     child:Row(children: [
                                        for(int i=0;i<promotag.length;i++) con3(image: foodimages[i],promoHead:promoHead[i],promotag:promotag[i],promocode:promocode[i]) 
                                     ],),                                 ),),],),
                            for(int i=0;i<name.length;i++)container1(
                               image: image[i],name:name[i] ,location:location[i],descript: descript[i]),
                                  ]),),),],),


            Row(children: [Container(height: hght*0.07,width: wid,color: const Color.fromARGB(157, 158, 158, 158),
                                                                              child: Row(children: [
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen())), icon:Icon(Icons.home)),),
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>cart())), icon:Icon(Icons.shopping_cart)),),
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>wishList())), icon:Icon(Icons.loyalty)),),
                                                                                Container(height:hght*0.07,width: wid*0.25 ,child: IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>profile())), icon:Icon(Icons.account_box)),),
                                                                              ],),)],)
                                                                                                                                                             
                                                                      
                                     ],)
      ));
}}

      
  



