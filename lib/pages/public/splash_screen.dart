import 'dart:async';
// import 'package:google_fonts/google_fonts.dart';
import 'package:clinic_khojo/pages/public/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, ()=>Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => LoginPage())));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child:  Container(
          decoration: BoxDecoration(color: Color(0xFF0529BB)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: width * 0.6,
                        height: width * 0.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/appLogo1.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.390,
                      right: width * 0.286,
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Text(
                  'An ISO 9001:2015 Certified Company',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    // fontFamily:  GoogleFonts.poppins().fontFamily,
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
                        // fontFamily:  GoogleFonts.poppins().fontFamily,
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
                        // fontFamily:  GoogleFonts.poppins().fontFamily,
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
    );
  }

  // Future<void> navigationPage() async {
  //   // print("${FirebaseAuth.instance.currentUser} firebase user");
  //   // if (FirebaseAuth.instance.currentUser?.email == null) {
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (BuildContext context) => LoginScreen(),
  //     ),
  //   );
  //   // } else {
  //   //     Navigator.push(
  //   //         context,
  //   //         MaterialPageRoute(
  //   //             builder: (BuildContext context) => MainPage()));
  //   // }
  // }
}