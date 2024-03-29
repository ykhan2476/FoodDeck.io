import 'package:fooddeck/screens/homescreen.dart';
import 'package:fooddeck/screens/registration.dart';
import 'package:fooddeck/utils/utils.dart';
import 'package:fooddeck/widgets/headings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
 final sc = GlobalKey<FormState>();
 TextEditingController _email = TextEditingController();
TextEditingController _password = TextEditingController();



class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {

   //FIREBASE AUTH FOR AUTHENTICATION and accessing apis in firebase
  FirebaseAuth _auth = FirebaseAuth.instance;

  //formkey and textcontrollers for form 
  
 

  //height and width
    double hght = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    
    
    return Scaffold(
      
  body:SingleChildScrollView(scrollDirection: Axis.vertical,child:
    Container(height: hght,width: wid,decoration:  BoxDecoration(image:DecorationImage(image:AssetImage('assets/images/l3.webp',),fit: BoxFit.cover)),
     child:Column(children:[
      SizedBox(height: 300,),
      SizedBox(height: 50,child:headings(text1:"LOGIN",) ,),
      SizedBox(height: 20,),
      Form(
      key:sc,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Email',prefixIcon: Icon(Icons.email)
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _password,
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Password',prefixIcon: Icon(Icons.password)
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                if (sc.currentState!.validate()) {
                  _auth.signInWithEmailAndPassword(
                      email: _email.text.toString(),
                      password:_password.text.toString()).then((value) {
                        Utils().toastmessage('LOGIN SUCCESSFULL! ');
                        
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> homescreen()));
                      }).onError((error, stackTrace) {
                        Utils().toastmessage(error.toString());});
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    ),
    SizedBox(height: 20,),
    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
      SizedBox(child: TextButton(onPressed: (){}, child:Text('forget password',style: TextStyle(color: Colors.white),))),
      Row(children: [
         SizedBox(child: Text("don't have an account?"),),
      SizedBox(child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const registration()));},
       child:Text('Sign up',style: TextStyle(color: Colors.white),)))
      ],),
     
    ],),
    SizedBox(height: 20,),
  
      ],)),
    )
    )
    ;
  }
}