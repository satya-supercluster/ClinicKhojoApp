import 'package:clinic_khojo/pages/private/appointment_details_page.dart';
import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class SearchDoctorsTile extends StatefulWidget {
  final Map<String,String> map;
  final String title;
  // final String link;
  const SearchDoctorsTile({
    required this.map,
    required this.title,
    super.key,
  });

  @override
  State<SearchDoctorsTile> createState() => _SearchDoctorsTileState();
}

class _SearchDoctorsTileState extends State<SearchDoctorsTile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width:width,
      padding: EdgeInsets.all(8),
      decoration:BoxDecoration(
        color:Color.fromARGB(255, 231, 236, 255),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        width:92,
                        height: 70,
                        margin:EdgeInsets.only(top:5,right:3),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.map['image']??""),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8))
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 3,
                    right: 0,
                    child:Container(
                      width:10.21,
                      height:10,
                      decoration: BoxDecoration(
                        color:Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(27)),
                        border:Border.all(width:1,color: Colors.white)
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(width:12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Title
                  
                Text(widget.map['title']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize:18),),
    
                SizedBox(height:4),
                // Degree, Specialization and Fee
    
                Row(
                  children: [
                    Text(widget.map['degree']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey),),
                    SizedBox(width:12),
                    Text(widget.map['specialization']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey),),
                    SizedBox(width:12),
                    Text("Fee: ₹"+(widget.map['fee']??""),style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Colors.green),),
                  ],
                ),
                SizedBox(height:12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => AppointmentDetailsPage(title:widget.title,map:widget.map)));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding:EdgeInsets.fromLTRB(8.5, 6, 8.5, 6),
                        decoration:BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                        ),
                        child: Text("Appointment",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey)),
                      ),
                    ),
                    SizedBox(width:24),
                    // image of star should be added here
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/star.png",width:12,height:12),
                    ),
                    SizedBox(width:3.7),
                    Align(
                      alignment: Alignment.center,
                      child: Text(widget.map['rating']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey))
                    )
                  ],
                ),
                SizedBox(height:12),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:30,
                          height: 30,
                          padding:EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(widget.map['dp']??""),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                        )
                      ],
                    ),
                    SizedBox(width:8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.map['name']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14),),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => DoctorProfile(map:widget.map)));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 1, 0, 1),
                            child: Text("View Profile",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:12,decoration:TextDecoration.underline,color:Colors.red,decorationColor:Colors.red),)
                          )
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}