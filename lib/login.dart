import 'package:flutter/material.dart';
import 'package:real_estate/sign_up.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome back',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));
            }, icon: Icon(Icons.login_outlined))
          ],
          
        ),
      ),
    );
  }
}