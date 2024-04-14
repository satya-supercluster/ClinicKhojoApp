import 'package:clinic_khojo/pages/private/appointment_form_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppointmentHistoryTile extends StatefulWidget {
  final String title;
  // final bool isEmergency;
  final String location;
  final String time;
  final String fee;
  const AppointmentHistoryTile({
    super.key,
    required this.title,
    // required this.isEmergency,
    required this.location,
    required this.time,
    required this.fee,
  });

  @override
  State<AppointmentHistoryTile> createState() => _AppointmentHistoryTileState();
}

class _AppointmentHistoryTileState extends State<AppointmentHistoryTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:Constants.themeLightBlue,
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      child:Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title and Emergency
                  Row(
                    children: [
                      Text(widget.title,style:GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500)),
                      SizedBox(width:5),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            color:Constants.themeRed,
                          ),
                          child:Text("Emergency",style:GoogleFonts.poppins(fontSize:8,fontWeight:FontWeight.w500,color:Colors.white))
                        ),
                      )
                    ],
                  ),
                  // Appointed and tick mark
                  Row(
                    children: [
                      Text("Appointed",style:GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                      SizedBox(width:4),
                      Image.asset("assets/icon/tick.png",width:9.04,height:8.67)
                    ],
                  )
                ],
              ),
              SizedBox(height:5),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icon/location.png",width:12,height:12),
                      SizedBox(width:1.85),
                      Text(widget.location,style:GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                    ],
                  ),
                  SizedBox(width:15),
                  Row(
                    children: [
                      Image.asset("assets/icon/clock.png",width:12,height:12),
                      SizedBox(width:4),
                      Text(widget.time,style:GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                    ],
                  )
                ],
              ),
              SizedBox(height:8),
              Text("Fee: "+widget.fee,style:GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500,color:Constants.feeGreen))
            ],
          ),
          SizedBox(height:24),
          Row(
            children: [
              Expanded(
                flex:3,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    //BoxShadow
                    boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.15),
                            blurRadius: 8,
                            offset: Offset(0,4),
                          ),
                        ]
                  ),
                  child:GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: ((context) => AppointmentFormPage())
                        )
                      );
                    },
                    child: Text("Book Another Appointment",style:GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500,color:Constants.textRed
                    )
                    ),
                  )
                ),
              ),
              SizedBox(width:8),
              Expanded(
                flex:2,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  decoration: BoxDecoration(
                    border:Border.all(width: 1,color:Constants.themeRed),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                    //BoxShadow
                  ),
                  child:Text("Give Feedback",style:GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500,color:Constants.themeRed
                  ))
                ),
              )
            ],
          )
        ],
      )
    );
  }
}