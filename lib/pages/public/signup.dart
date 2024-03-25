import 'package:clinic_khojo/pages/private/appointment.dart';
import 'package:clinic_khojo/widgets/global/input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 3, 190),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Container(
                height:200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("LOGO",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white)
                  ),
                  ]
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30,right:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Register a new account",style: TextStyle(fontSize: 20,color: 
                    Colors.white),),
                    SizedBox(height: 18,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:40,
                          width:100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage("assets/images/google.png"),
                                height: 20,
                                width: 20,
                              ),
                              Text("Google",style: TextStyle(fontSize: 15,color: Colors.white),)
                            ],
                          ),   
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'or',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        InputField(hintText:"Full Name",prefixIcon: Icons.person_outline),
                        SizedBox(height:10),
                        InputField(hintText:"Email",prefixIcon: Icons.email),
                        SizedBox(height:10),
                        InputField(hintText:"Password",prefixIcon: Icons.lock,isPasswordField: true,),
                        SizedBox(height:10),
                        InputField(hintText:"Confirm Password",prefixIcon: Icons.lock,isPasswordField: true,),
                      ],
                    ),
                    SizedBox(height: 80,),
                    Column(
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AppointmentPage()));
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(27.5)),
                            ),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top:8,bottom: 8),
                                  child: Text("Sign Up",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),)
                                ),
                              ],
                            )
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'or',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(27.5)),
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top:8,bottom: 8),
                                child: Text("Login",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),)
                              ),
                            ],
                          )
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}