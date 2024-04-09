import 'package:clinic_khojo/pages/public/otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

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
                            height: width * 0.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/appLogo1.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height*0.056,
                          right: width * 0.308,
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'Enter your mobile number and login',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,5,20,10),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.number,
                        inputFormatters:[
                          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                          LengthLimitingTextInputFormatter(10)
                        ],
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
                            child: Center(child: Text("+91",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black38),))  
                          ),
                        ),
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
                                      builder: (BuildContext context) => OtpPage()));
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 60, 20,0),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFFFFFF),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Text(
                                    'Get Otp',
                                    style: TextStyle(
                                      color: Color(0xFFFA0808),
                                      fontSize: 16,
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text("By Continuing, You agree to clinic khojo's Terms of Services and Privacy Poilicy.",style: TextStyle(fontSize: 12,color: Colors.white70),),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 45, 5),
                      child: Text(
                        'An ISO 9001:2015 Certified Company',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Powered by',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
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
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
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