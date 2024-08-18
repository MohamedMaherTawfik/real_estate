import 'package:flutter/material.dart';
import 'package:real_estate/Homepage.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Welcome back',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.sentiment_satisfied))
          ],
        ),
        body: Container(
          color: Colors.grey.shade200,
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: ListView(
            children: [
            Container(height: 100,),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text('Log in to',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color:Colors.black),),
                      Text(' Real Estate App',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color:Colors.blue),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: ListTile(
                    leading: Text('Email Adress',style: TextStyle(fontSize: 21,color:Colors.black),),
                  )
                ),
                TextField(
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'email@gmail.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey,width: 2),
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Text('Password',style: TextStyle(fontSize: 21,color:Colors.black),),
                  )
                ),
                TextField(
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'at least 8 Characters',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey,width: 2),
                    ),
                  ),
                ),
                ListTile(
                  trailing: InkWell(
                    onTap: () {},
                    child: Text('Forgot Password',style: TextStyle(fontSize: 18,decoration: TextDecoration.underline),),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  child: Container(
                    decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 400,
                    child: Center(
                    child: Text('Log in',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
                ),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have An Account? ",style: TextStyle(fontSize: 16,color: Colors.grey.shade700),),
                      InkWell(
                        onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));  
                        },
                        child: Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.grey.shade700,decoration: TextDecoration.underline),),),
                    ],
                  )
                )
              ],
            ),
          ],),
        ),
      ),
    );
  }
}