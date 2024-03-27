import 'package:clinic_khojo/pages/public/otp.dart';
import 'package:clinic_khojo/utils/colours.dart';
import 'package:clinic_khojo/widgets/global/input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController=TextEditingController();
    return Scaffold(
      backgroundColor: ColorConstants.darkBlue,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height-50,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/logo/Logo_with_bg.png"),
                            width: 2*(MediaQuery.of(context).size.width/3),
                          ),
                        ],
                      ),
                      Container(
                        width:MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children:[
                            Row(
                              children: [
                                Text("Enter your mobile number and login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height:10),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Phone Number",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),)
                                  ],
                                ),
                                SizedBox(height:5),
                                Container(
                                  decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        textAlignVertical: TextAlignVertical.center,
                                        keyboardType: TextInputType.number,
                                        inputFormatters:[
                                          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                                          LengthLimitingTextInputFormatter(10)
                                        ],
                                        cursorColor: Colors.black,
                                        controller: phoneNumberController,
                                        autofocus: true,
                                        style: TextStyle(
                                          fontSize: 18.0, 
                                          color: Color.fromARGB(150, 0, 0, 0),
                                          fontWeight: FontWeight.w600
                                        ),
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          // hintText: "0000000000",
                                          // hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                                          contentPadding:
                                              const EdgeInsets.only(left:15,right:15),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          enabledBorder: UnderlineInputBorder( 
                                            borderSide: BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          prefixIcon:SizedBox(
                                            width: 30,
                                            child: Center(child: Text("+91",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black38),))  
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:80),
                            GestureDetector(
                              onTap:()=>Navigator.of(context).push(MaterialPageRoute(builder:(context)=> OTPPage())),
                              child: Container(
                                width: double.infinity,
                                height:40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(child: Text("Get OTP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.red),)),
                              ),
                            ),
                            SizedBox(height:10),
                            Text("By Continuing, You agree to clinic khojo's Terms of Services and Privacy Poilicy.",style: TextStyle(fontSize: 12,color: Colors.white70),),
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("An ISO 9001:2015 certified company",style: TextStyle(fontSize: 12,color: Colors.white70)),
                    Text("powered by Zorway",style: TextStyle(fontSize: 12,color: Colors.white70),),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}