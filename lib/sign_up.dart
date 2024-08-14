import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:real_estate/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Welcome',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            }, icon: Icon(Icons.login_outlined,size: 30,))
          ],
        ),
        body: Container(
          color: Colors.grey.shade200,
          child: ListView(
            children: [
              Container(height: 10,),
              Center(child: Text('Sign_Up Page',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),)),
              Container(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(
                  children: [
                    TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      hintText: 'Full Name',  
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey,width: 2),
                      ),
                    ),
                  ),
                  Container(height: 20,),
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
                  Container(height: 20,),
                  TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey,width: 2),
                      ),
                    ),
                  ),
                  Container(height: 20,),
                  TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey,width: 2),
                      ),
                    ),
                  ),
                  
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child:InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(color:Color.fromARGB(255, 4, 107, 190),borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 400,
                      child: Center(
                      child: Text('Log in',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  ),
                  ),),
                  ListTile(
                    trailing: InkWell(
                      onTap: () {},
                      child: Text('Reset Password',style: TextStyle(fontSize: 18,decoration: TextDecoration.underline),),
                    ),
                  ),
                  Center(child: Text('OR',style:  TextStyle(fontSize: 15,color: Colors.grey.shade600),),),
                  Container(height: 15,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 65,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.only(left: 10,right: 10),
                                height: 40,
                                width: 40,
                                child: Image.asset('images/Google.png'),
                              ),
                            ),
                            Text('Google',style: TextStyle(fontSize: 15,color: Colors.grey.shade500),)
                          ],
                        ),
                      ),
                     InkWell(
                      onTap: (){  },
                       child: Container(
                          height: 65,
                          width: 150,
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10,right: 10),
                                height: 40,
                                width: 40,
                                child: Image.asset('images/facebook.png'),
                              ),
                              Text('Facebook',style: TextStyle(fontSize: 15,color: Colors.grey.shade500),)
                            ],
                          ),
                        ),
                     ),
                    ],
                  ),
                ),
                Container(height: 25,),
                Center(child:Text('Terms & Condition',style: TextStyle(fontSize: 17,color: Colors.grey.shade600),) ,)
            ],
          ),
        ),
      
      ),
    );
  }
}