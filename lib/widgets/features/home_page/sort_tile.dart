import 'package:clinic_khojo/pages/private/specialist_doctors_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class SortingTile extends StatefulWidget {
  final String title;
  final String no;
  final String image;
  const SortingTile({
    super.key,
    required this.title,
    required this.no,
    required this.image
  });

  @override
  State<SortingTile> createState() => _SortingTileState();
}

class _SortingTileState extends State<SortingTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SpecialistDoctorsPage(specialist: widget.title,)));
      },
      child: Container(
        // height:99,
        width:60,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width:60,
              height:60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color:Constants.themeLightBlue,
              ),
              child:Center(
                child:Image.asset(widget.image,width:40,height:40)
              )
            ),
            SizedBox(height:8),
            Text(widget.title,style: GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500),),
            // SizedBox(height:1),
            Text(widget.no,style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500,color:Constants.themeGrey))
          ],
        )
      ),
    );
  }
}