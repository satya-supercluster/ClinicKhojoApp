import 'dart:io';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/features/search_doctor/search_doctors_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clinic_khojo/pages/private/search_doctor_screen.dart';

class SortingTile extends StatefulWidget {
  final String title;
  final String no;
  final String image;
  final String value;
  const SortingTile({
    super.key,
    required this.title,
    required this.no,
    required this.image,
    required this.value
  });

  @override
  State<SortingTile> createState() => _SortingTileState();
}

class _SortingTileState extends State<SortingTile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SearchDoctorsPage(title: widget.title, heading: widget.value+" Specialist")));
      },
      child: Container(
        // height:99,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width:width*0.2,
              height:width*0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color:Constants.themeLightBlue,
              ),
              child:Center(
                child:Image.asset(widget.image,width:width*0.14,height:width*0.14,fit: BoxFit.fill,)
              )
            ),
            SizedBox(height:8),
            Text(widget.value,style: TextStyle(fontSize:12,fontWeight:FontWeight.w500),),
            // SizedBox(height:1),
            Text(widget.no,style: TextStyle(fontSize:10,fontWeight:FontWeight.w500,color:Constants.themeGrey))
          ],
        )
      ),
    );
  }
}