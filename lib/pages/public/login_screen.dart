import 'package:clinic_khojo/pages/public/otp_screen.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  final String? phoneNumber;
  const LoginPage({super.key, this.phoneNumber});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController phoneNumberController=TextEditingController(text: widget.phoneNumber ?? '');
    return Scaffold(
      backgroundColor:  const Color(0xFF0529BB),
      body:SingleChildScrollView(
        child: Container(
          width:width,
          height: height,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                            decoration: const BoxDecoration(
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
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/image8.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
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
                    const Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                              offset: const Offset(0,2),
                            ),
                          ],
                          borderRadius:const BorderRadius.all(Radius.circular(5))
                        ),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.number, // Display numeric keyboard
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10), // Limit to 10 digits
                            FilteringTextInputFormatter.digitsOnly, // Allow only digits
                          ],
                          cursorColor: Colors.black,
                          controller: phoneNumberController,
                          autofocus: true,
                          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Constants.themeGrey),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.only(left: 15, right: 15),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            prefixIcon: const SizedBox(
                              width: 30,
                              child: Center(
                                child: Text(
                                  "+91",
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Constants.themeGrey),
                                ),
                              ),
                            ),
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
                            onTap: () async{
                              if (phoneNumberController.text.length == 10) {
                                // Navigate to OtpPage if the phone number is valid

                                // await FirebaseAuth.instance.verifyPhoneNumber(
                                //   verificationCompleted: (PhoneAuthCredential credential){}, 
                                //   verificationFailed: (FirebaseAuthException ex){}, 
                                //   codeSent: (String verificationId,int? resendToken){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) => OtpPage(
                                          // verificationId: verificationId,
                                          phoneNumber: phoneNumberController.text,
                                        ),
                                      ),
                                    );
                                //   }, 
                                //   codeAutoRetrievalTimeout: (String verificationId){},
                                //   phoneNumber: "+91${phoneNumberController.text}"
                                // );
                              } else {
                                // Show an error message or perform any other action if the phone number is invalid
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Invalid Phone Number'),
                                      content: const Text('Please enter a valid 10-digit phone number.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.of(context).pop(),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(20, 60, 20,0),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFFFFF),
                                borderRadius: const BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color:Colors.black.withOpacity(0.15),
                                    blurRadius: 4,
                                    offset: const Offset(0,2),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
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
                    const SizedBox(height:10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 55),
                            child:RichText(
                              text:const TextSpan(
                                children: [
                                  TextSpan(text:"By Continuing, You agree to clinic khojo's ",style:TextStyle(fontSize:13,fontWeight:FontWeight.w500,color:Colors.white),),
                                  TextSpan(text: "Terms of Services",style:TextStyle(fontSize:13,fontWeight:FontWeight.w500,color:Colors.white,decoration:TextDecoration.underline,decorationColor:Colors.white),
                                    // recognizer: TapGestureRecognizer() ..onTap(){
                                    //   print("Hello")
                                    // }
                                  ),
                                  TextSpan(text:" and ",style:TextStyle(fontSize:13,fontWeight:FontWeight.w500,color:Colors.white),),
                                  TextSpan(text:"Privacy Poilicy.",style:TextStyle(fontSize:13,fontWeight:FontWeight.w500,color:Colors.white,decoration:TextDecoration.underline,decorationColor:Colors.white),
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
                    const Text(
                      'An ISO 9001:2015 Certified Company',
                      style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Colors.white)
                    ),
                    const SizedBox(height:5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Powered by',
                            style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,color:Colors.white)
                          ),
                          const SizedBox(width: 5), // Adjust the spacing between text and image
                          Image.asset(
                            "assets/icon1.png",
                            width: 20, // Adjust the width of the image
                            height: 20, // Adjust the height of the image
                          ),
                          const SizedBox(width: 5), // Adjust the spacing between image and text
                          const Text(
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