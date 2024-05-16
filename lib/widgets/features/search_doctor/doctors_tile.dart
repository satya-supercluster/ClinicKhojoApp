import 'package:clinic_khojo/pages/private/appointment_details_page.dart';
import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DoctorsTile extends StatefulWidget {
  final Map<String,dynamic> map;
  const DoctorsTile({
    required this.map,
    super.key,
  });

  @override
  State<DoctorsTile> createState() => _DoctorsTileState();
}

class _DoctorsTileState extends State<DoctorsTile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => AppointmentDetailsPage(title:"Search Doctors",map:widget.map)));
      },
      child: Container(
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
                Container(
                  width:width*0.2,
                  height: width*0.2,
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
            SizedBox(width:10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text("${widget.map['name']}",style: TextStyle(fontWeight:FontWeight.bold,fontSize:18),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  // Degree, Specialization and Fee
                  Row(
                    children: [
                      Text("${widget.map['degree']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),),
                      SizedBox(width:12),
                      Text("Fee: ₹${widget.map['fee']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Colors.green),),
                      SizedBox(width:12),
                      Expanded(child: Text("${widget.map['specialization']} Specialist",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),)),
                    ],
                  ),
                  SizedBox(height:1),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // image of star should be added here
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/star.png",width:12,height:12),
                      ),
                      SizedBox(width:3.7),
                      Align(
                        alignment: Alignment.center,
                        child: Text("${widget.map['rating']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey))
                      ),
                      SizedBox(width:12),
                      Expanded(child: Text("Location: ${widget.map['location']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),)),
                    ],
                  ),
                  SizedBox(height:1),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => DoctorProfile(map:widget.map)));
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 1, 0, 1),
                          child: Text("View Profile",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14,decoration:TextDecoration.underline,color:Colors.red,decorationColor:Colors.red),)
                        )
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}