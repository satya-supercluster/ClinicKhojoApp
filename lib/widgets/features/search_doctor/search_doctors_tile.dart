import 'package:clinic_khojo/pages/private/appointment_details_page.dart';
import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';
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
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => AppointmentDetailsPage(title:widget.title,doctorsDetails:widget.map,index:1)));
      },
      child: Container(
        width:width,
        padding: const EdgeInsets.all(8),
        decoration:const BoxDecoration(
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
                          margin:const EdgeInsets.only(top:5,right:3),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(widget.map['image']??""),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(8))
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
                          borderRadius: const BorderRadius.all(Radius.circular(27)),
                          border:Border.all(width:1,color: Colors.white)
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(width:12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //Title
                    
                  Text(widget.map['title']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.bold,fontSize:18),),
      
                  const SizedBox(height:4),
                  // Degree, Specialization and Fee
      
                  Row(
                    children: [
                      Text(widget.map['degree']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey),),
                      const SizedBox(width:12),
                      Text(widget.map['specialization']??"",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey),),
                      const SizedBox(width:12),
                      Text("Fee: ₹"+(widget.map['fee']??""),style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Colors.green),),
                    ],
                  ),
                  const SizedBox(height:12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding:const EdgeInsets.fromLTRB(8.5, 6, 8.5, 6),
                        decoration:const BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                        ),
                        child: Text("Appointment",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey)),
                      ),
                      const SizedBox(width:24),
                      // image of star should be added here
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/star.png",width:12,height:12),
                      ),
                      const SizedBox(width:3.7),
                      Align(
                        alignment: Alignment.center,
                        child: Text("${widget.map['rating']}",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey))
                      )
                    ],
                  ),
                  const SizedBox(height:12),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width:30,
                            height: 30,
                            padding:const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(widget.map['dp']??""),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(8))
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width:8),
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
                              padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                              child: Text("View Profile",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14,decoration:TextDecoration.underline,color:Colors.red,decorationColor:Colors.red),)
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
      ),
    );
  }
}