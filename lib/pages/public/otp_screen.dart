import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;    // Gives the width
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Container(
            height: height,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Color(0xFF0529BB)),
            child:Column(
              children: [
                
              ],
            )
          ),
        )
      ),
    );
  }
}