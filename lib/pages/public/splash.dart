import 'package:clinic_khojo/utils/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.darkBlue,
      body:SafeArea(
        child:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Center(
            child: Image(
              image: AssetImage("assets/logo/Logo_with_bg.png"),
            ),
          ),
        )
      )
    );
  }
}