import 'dart:ui';

import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/features/search_doctor/search_doctors_tile.dart';
import 'package:clinic_khojo/widgets/global/common_appbar.dart';
import 'package:clinic_khojo/widgets/global/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchDoctorsPage extends StatefulWidget {
  final String title;
  final String heading;
  const SearchDoctorsPage({
    super.key,
    required this.title,
    required this.heading
  });
  @override
  State<SearchDoctorsPage> createState() => _SearchDoctorsPageState();
}

class _SearchDoctorsPageState extends State<SearchDoctorsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height;

    List<Map<String,String>> l=
    [
      {
        "name": "Dr. Satyam Gupta",
        "title": "Dr. Satyam's Clinic",
        "rating": "5.0",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MBBS",
        "specialization": "heart specialist",
        "fee": "500"
      },
      {
        "name": "Dr. Ananya Singh",
        "title": "Heart Care Center",
        "rating": "4.7",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MD",
        "specialization": "cardiologist",
        "fee": "600"
      },
      {
        "name": "Dr. Rohit Sharma",
        "title": "Sharma Cardiology Clinic",
        "rating": "4.5",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MBBS",
        "specialization": "cardiologist",
        "fee": "550"
      },
      {
        "name": "Dr. Priya Patel",
        "title": "Healthy Heart Hospital",
        "rating": "4.9",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MD",
        "specialization": "pediatric cardiologist",
        "fee": "700"
      },
      {
        "name": "Dr. Sameer Gupta",
        "title": "Gupta Heart Clinic",
        "rating": "4.8",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MBBS",
        "specialization": "electrophysiologist",
        "fee": "650"
      },
      {
        "name": "Dr. Aarav Verma",
        "title": "Verma Cardiac Center",
        "rating": "4.6",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MD",
        "specialization": "cardiovascular surgeon",
        "fee": "750"
      },
      {
        "name": "Dr. Neha Shah",
        "title": "Heartbeat Clinic",
        "rating": "4.7",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MBBS",
        "specialization": "cardiologist",
        "fee": "600"
      },
      {
        "name": "Dr. Karan Kapoor",
        "title": "Kapoor Heart Institute",
        "rating": "4.9",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MD",
        "specialization": "cardiologist",
        "fee": "700"
      },
      {
        "name": "Dr. Anika Reddy",
        "title": "Reddy Heart Center",
        "rating": "4.8",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MBBS",
        "specialization": "heart specialist",
        "fee": "550"
      },
      {
        "name": "Dr. Arjun Singh",
        "title": "Singh Cardiology Clinic",
        "rating": "4.6",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MD",
        "specialization": "cardiologist",
        "fee": "650"
      },
      {
        "name": "Dr. Riya Gupta",
        "title": "Gupta Heart Care",
        "rating": "4.7",
        "dp": "assets/doctor.jpg",
        "image": "assets/img.jpg",
        "degree": "MBBS",
        "specialization": "pediatric cardiologist",
        "fee": "600"
      }
    ];
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        body:Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: width*0.044),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              CommonAppBar(
                title: widget.title,
                heading: widget.heading
              ),
              CustomSearchBar(), 
              SizedBox(height:20),
              Expanded(
                child: ListView.builder(
                  itemCount: l.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        SearchDoctorsTile(map:l[index],title:widget.title),
                        SizedBox(height:20),
                      ],
                    );
                  }
                ),
              )
            ]
          ),
        )
      )
    );
  }
}
