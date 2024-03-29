
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class drawersection extends StatefulWidget {
  var name;
  var func;
  
   drawersection({super.key,this.name,this.func});

  @override
  State<drawersection> createState() => _drawersectionState();
}

class _drawersectionState extends State<drawersection> {
  
  @override
   
  Widget build(BuildContext context) {
    return ListView(children: [ListTile(title: Text('${widget.name}'),onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>widget.func));
    },)],);
  }
}////Text('${widget.name}')