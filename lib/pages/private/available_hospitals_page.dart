import 'package:clinic_khojo/pages/private/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../widgets/features/search_doctor/hospitals_tile.dart';
import 'doctors_profile_page.dart';

class AvailableHospitalsPage extends StatefulWidget {
  final Map<String,dynamic> doctorsDetails;
  const AvailableHospitalsPage({super.key, required this.doctorsDetails});

  @override
  State<AvailableHospitalsPage> createState() => _AvailableHospitalsPageState();
}

class _AvailableHospitalsPageState extends State<AvailableHospitalsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height; // Gives the width
    return SafeArea(
      child: Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child:GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 24),
                      child: Icon(
                        size: 22,
                        Icons.arrow_back_ios,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 24),
                  alignment: Alignment.center,
                  child: Text(
                    "Search Doctors",
                    style: TextStyle(color: Constants.themeGrey,fontSize: 14,fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width:width,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
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
                          image: AssetImage(widget.doctorsDetails['dp']??""),
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
                          Text("${widget.doctorsDetails['name']}",style: TextStyle(fontWeight:FontWeight.bold,fontSize:18),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      // Degree, Specialization and Fee
                      Row(
                        children: [
                          Text("${widget.doctorsDetails['degree']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),),
                          SizedBox(width:12),
                          Text("Fee: ₹${widget.doctorsDetails['fee']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Colors.green),),
                          SizedBox(width:12),
                          Expanded(child: Text("${widget.doctorsDetails['specialization']} Specialist",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),)),
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
                            child: Text("${widget.doctorsDetails['rating']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey))
                          ),
                          SizedBox(width:12),
                          Expanded(child: Text("Location: ${widget.doctorsDetails['location']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),)),
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
                                builder: (BuildContext context) => DoctorProfile(map:widget.doctorsDetails)));
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
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Available Doctors",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Constants.themeBlue),)
            ],
          ),
          SizedBox(height:10),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child:ListView.builder(
                  itemCount: widget.doctorsDetails['clinics'].length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        HospitalsTile(map: widget.doctorsDetails['clinics'][index],),
                        SizedBox(height:20),
                      ],
                    );
                  }
                ),
            )
          )
        ],
      )
    ));
  }
}