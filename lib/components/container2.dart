import 'package:flutter/material.dart';
import 'package:fooddeck/components/theme.dart';

// ignore: must_be_immutable
class container2 extends StatefulWidget {
  String ? foodImages;
  String ? foodName;
  container2({super.key,this.foodImages,this.foodName});

  @override
  State<container2> createState() => _container2State();
}

class _container2State extends State<container2> {
  @override
  Widget build(BuildContext context) {
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(height: hght*0.15,width: hght*0.1,margin: EdgeInsets.all(5),
    decoration: BoxDecoration(color: theme().primaryColor,borderRadius: BorderRadiusDirectional.circular(7)),
    child:Column(children: [
            Container(margin:EdgeInsetsDirectional.all(5),height: hght*0.1,width: hght*0.08,
                         clipBehavior: Clip.antiAlias,decoration:BoxDecoration(borderRadius: BorderRadiusDirectional.circular(7))
                        ,child: Image.asset('${widget.foodImages}',fit: BoxFit.cover,),),
            Container(height: hght*0.016,width: hght*0.08,child: Text('${widget.foodName}',style: TextStyle(fontSize: 10),),) ,
            

    ],),
    );
  }
}