import 'package:clinic_khojo/utils/colours.dart';
import 'package:clinic_khojo/widgets/features/otp/otp_input.dart';
import 'package:clinic_khojo/widgets/global/input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({super.key});

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController n1=TextEditingController();
    TextEditingController n2=TextEditingController();
    TextEditingController n3=TextEditingController();
    TextEditingController n4=TextEditingController();
    TextEditingController n5=TextEditingController();
    TextEditingController n6=TextEditingController();
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
                        padding: EdgeInsets.all(40),
                        child: Column(
                          children:[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  // width:2.5*(MediaQuery.of(context).size.width)/3,
                                  child: Text("Please enter the verification code we've sent you on +91 "+"XXXXXXXXXX"+"."+" Edit",style: TextStyle(fontSize: 16,color: Colors.white),)
                                )
                              ],
                            ),
                            SizedBox(height:15),
                            Column(
                              children: [  
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      OTPInput(isFirst: true, controller: n1),
                                      OTPInput(isFirst: false, controller: n2),
                                      OTPInput(isFirst: false, controller: n3),
                                      OTPInput(isFirst: false, controller: n4),
                                      OTPInput(isFirst: false, controller: n5),
                                      OTPInput(isFirst: false, controller: n6),
                                    ],
                                  ),  
                                ),
                                SizedBox(height:5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Trying to auto capture",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                                    Text("00:02",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height:80),
                            Container(
                              width: double.infinity,
                              height:40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(child: Text("LOGIN",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.red),)),
                            ),
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