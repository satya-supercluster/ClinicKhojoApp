import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorProfile extends StatefulWidget {
  final Map<String,dynamic> map;
  const DoctorProfile({
    super.key,
    required this.map,
  });

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body:Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
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
                      '${widget.map['name']}',
                      style: TextStyle(color: Constants.themeGrey,fontSize: 14,fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height:50),
                      Container(
                        width:width*0.25,
                        height:width*0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          // boxShadow: BoxShadow()
                          image: DecorationImage(image: AssetImage("assets/doctor.jpg"),fit: BoxFit.cover,)
                        ),
                      ),
                      SizedBox(height:8),
                      Text('${widget.map['name']}',style:TextStyle(fontSize:18,fontWeight:FontWeight.w500,color:Constants.themeHeadingBlue))
                    ],
                  ),
                ],
              ),
              SizedBox(height:30),
              Row(
                children: [
                  SizedBox(width:8),
                  Text("More Details",style:TextStyle(fontSize:18,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))
                ],
              ),
              SizedBox(height:10),
              Container(
                padding:EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                decoration: BoxDecoration(
                  color: Constants.themeLightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child:Column(
                  children: [
                    Row(
                      children: [
                        Text("Gender:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text("Male",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    SizedBox(height:8),
                    Row(
                      children: [
                        Text("Address:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text('${widget.map['location']}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    SizedBox(height:8),
                    Row(
                      children: [
                        Text("Degree:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text('${widget.map['degree']}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    SizedBox(height:8),
                    Row(
                      children: [
                        Text("Specialization:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text('${widget.map['specialization']}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    SizedBox(height:8),
                    Row(
                      children: [
                        Text("Years of Experience:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text("2",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    SizedBox(height:8),
                    Row(
                      children: [
                        Text("Title of clinic:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text('${widget.map['title']}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    SizedBox(height:8),
                    Row(
                      children: [
                        Text("Title of clinic:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text('${widget.map['title']}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    SizedBox(height:8),
                    Row(
                      children: [
                        Text("Title of clinic:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text('${widget.map['title']}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                  ],
                )
              )
            ],
          ),
        )
      )
    );
  }
}