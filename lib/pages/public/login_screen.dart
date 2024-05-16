import 'package:clinic_khojo/pages/public/otp_screen.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController phoneNumberController=TextEditingController();
    return Scaffold(
      backgroundColor:  Color(0xFF0529BB),
      body:SingleChildScrollView(
        child: Container(
          width:width,
          height: height,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: width * 0.5,
                            height: width * 0.307,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/appLogo1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height*0.015,
                          right: width * 0.26,
                          child: Container(
                            width: width * 0.03,
                            height: width * 0.03, // Adjust the size as needed
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image8.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Text(
                              'Enter your mobile number and login',
                              style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Colors.white)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Text(
                              'Phone Number',
                              style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Colors.white)
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,5,20,10),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color:Colors.black.withOpacity(0.15),
                              blurRadius: 4,
                              offset: Offset(0,2),
                            ),
                          ],
                          borderRadius:BorderRadius.all(Radius.circular(5))
                        ),
                        child: TextFormField(
                          // initialValue: phoneNumberController.text!=""?phoneNumberController.text:"",
                          textAlignVertical: TextAlignVertical.center,
                          // keyboardType: TextInputType.number,
                          // inputFormatters:[
                          //   // FilteringTextInputFormatter.digitsOnly,
                          //   LengthLimitingTextInputFormatter(10)
                          // ],
                          cursorColor: Colors.black,
                          controller: phoneNumberController,
                          autofocus: false,
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),
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
                              child: Center(child: Text("+91",style:TextStyle(fontSize:13,fontWeight:FontWeight.w400,color:Constants.themeGrey),))  
                            ),
                          ),
                        ),
                        // child:TextFormField(
                        //     controller: phoneNumberController,
                        //     obscureText: false,
                        //     keyboardType: TextInputType.number,
                        //     textAlign: TextAlign.start,
                        //     maxLines: 1,
                        //     onChanged: (value){
                        //       print(value);
                        //       //   setState(() {
                        //       //     verify = "Verify";
                        //       //   });
                        //       // if(Details.isNotEmpty &&  value==(Details['contactNumber'])) {
                        //       //   setState(() {
                        //       //     verify = "Verified";
                        //       //   });
                        //       // }
                        //     },
                        //     validator: (value) {
                        //       // if (value == null || value.length == 0) {
                        //       //   return 'Enter your Phone Number';
                        //       // } else
                        //       //   return null;
                        //     },
                        //     style: TextStyle(
                        //       fontWeight: FontWeight.w400,
                        //       fontStyle: FontStyle.normal,
                        //       fontSize: 16,
                        //       color: Colors.black,
                        //     ),
                        //     decoration: InputDecoration(
                        //       errorStyle: TextStyle(color: Colors.red.shade200),
                        //       prefixIcon: GestureDetector(
                        //         child: Icon(
                        //           Icons.phone,
                        //           color: Color(0xFF949494),
                        //         ),
                        //       ),
                        //       disabledBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(8.0),
                        //         borderSide: BorderSide(
                        //           color: Color(0xFF949494),
                        //           width: 1,
                        //         ),
                        //       ),
                        //       focusedBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(8.0),
                        //         borderSide: BorderSide(
                        //           color: Color(0xFF949494),
                        //           width: 1,
                        //         ),
                        //       ),
                        //       enabledBorder: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(8.0),
                        //         borderSide: BorderSide(
                        //           color: Color(0xFF949494),
                        //           width: 1,
                        //         ),
                        //       ),
                        //       hintText: 'Your Phone Number',
                        //       filled: true,
                        //       fillColor: Color(0xFFE1E0E0),
                        //       hintStyle: TextStyle(fontSize: 14),
                        //       isCollapsed: true,
                        //       isDense: true,
                        //       contentPadding:
                        //       EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                        //     ),
                        //   ),
// isko usse compare krna kyuki yeh kam kr rhi h theek se
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // Handle sign up action
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) => OtpPage(phoneNumber: phoneNumberController.text,)));
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 60, 20,0),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color:Colors.black.withOpacity(0.15),
                                    blurRadius: 4,
                                    offset: Offset(0,2),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    'Get Otp',
                                    style:TextStyle(fontSize:13,fontWeight:FontWeight.w500,color:Constants.textRed),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 55),
                            child:RichText(
                              text:TextSpan(
                                children: [
                                  TextSpan(text:"By Continuing, You agree to clinic khojo's ",style:TextStyle(fontSize:11,fontWeight:FontWeight.w500,color:Colors.white),),
                                  TextSpan(text: "Terms of Services",style:TextStyle(fontSize:11,fontWeight:FontWeight.w500,color:Colors.white,decoration:TextDecoration.underline,decorationColor:Colors.white),
                                    // recognizer: TapGestureRecognizer() ..onTap(){
                                    //   print("Hello")
                                    // }
                                  ),
                                  TextSpan(text:" and ",style:TextStyle(fontSize:11,fontWeight:FontWeight.w500,color:Colors.white),),
                                  TextSpan(text:"Privacy Poilicy.",style:TextStyle(fontSize:11,fontWeight:FontWeight.w500,color:Colors.white,decoration:TextDecoration.underline,decorationColor:Colors.white),
                                    // recognizer: TapGestureRecognizer() ..onTap(){
                                    //   print("Hello")
                                    // }
                                  )
                                ]
                              )
                            )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'An ISO 9001:2015 Certified Company',
                      style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Colors.white)
                    ),
                    SizedBox(height:5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Powered by',
                            style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,color:Colors.white)
                          ),
                          SizedBox(width: 5), // Adjust the spacing between text and image
                          Image.asset(
                            "assets/icon1.png",
                            width: 20, // Adjust the width of the image
                            height: 20, // Adjust the height of the image
                          ),
                          SizedBox(width: 5), // Adjust the spacing between image and text
                          Text(
                            'ZORWAY',
                            style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,color:Colors.white)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}