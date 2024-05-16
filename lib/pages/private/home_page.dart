import 'package:clinic_khojo/pages/private/search_doctor_screen.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/features/home_page/sort_tile.dart';
import 'package:clinic_khojo/widgets/global/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      child: Scaffold(
        body:Stack(
          children:
            [
              Container(
              child:Column(
                children: [
                  SizedBox(height:20),
                  Row(children: [
                    SizedBox(width:28),
                    Text("Welcome Back!",style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                  ],),
                  SizedBox(height:3),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child:Row(
                            children: [
                              // hatana h yha se gesture detector
                              Text("Explore Doctors",style:TextStyle(fontSize:20,fontWeight:FontWeight.w500,color:Constants.themeHeadingBlue))
                            ],
                          )
                        ),
                        Container(
                          child:Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color:Constants.themeLightBlue,
                                  borderRadius: BorderRadius.all(Radius.circular(4))
                                ),
                                child:Row(
                                  children: [
                                    Image.asset("assets/Subtract.png",width: 11.83,height:16),
                                    SizedBox(width:3),
                                    Text("Ayushmaan",style:TextStyle(fontSize:8,fontWeight:FontWeight.w500)),
                                  ],
                                )
                              ),
                              SizedBox(width:5),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color:Constants.themeLightBlue,
                                  borderRadius: BorderRadius.all(Radius.circular(4))
                                ),
                                child:Row(
                                  children: [
                                    Image.asset("assets/Subtract.png",width: 11.83,height:16),
                                    SizedBox(width:3),
                                    Text("ABHA",style:TextStyle(fontSize:8,fontWeight:FontWeight.w500)),
                                  ],
                                )
                              ),
                            ],
                          )
                        )
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SearchDoctorsPage(title:"Doctors near you",heading: "Top Doctors",)));
                    },
                    child: Container(
                      width:width*0.822,
                      height:height*0.05,
                      decoration: BoxDecoration(
                        border:Border.all(
                          width: 1,
                          color:Constants.themeGrey
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(27))
                      ),
                      padding: EdgeInsets.only(left:13),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Container(
                            alignment: Alignment.center,
                            width:width*0.06,
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.search,
                              size:width*0.05,
                              color:Constants.themeGrey
                            ),
                          ),
                          Expanded(
                            child:TextField(
                              enabled: false,
                              autofocus: false,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                hintText: "Search Doctors...",
                                hintStyle: GoogleFonts.poppins(fontSize:12),
                                contentPadding: EdgeInsets.only(left:4,bottom: 10),
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                labelText: null,
                                focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white, width: 0),
                                ),
                              ),
                            )
                          ),
                          Container(
                            alignment: Alignment.center,
                            width:width*0.13,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              border:Border(
                                left:BorderSide(
                                  width:1,
                                  color: Constants.themeGrey
                                ),
                              ),
                              borderRadius: BorderRadius.only(topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                              color: Constants.themeLightRed
                            ),
                            child: Icon(
                              Icons.tune,
                              size:25,
                              color:Colors.red
                            ),
                          )
                        ]
                      )
                    ),
                  ),
                  SizedBox(height:20),
                  Row(
                    children: [
                      SizedBox(width:24),
                      Text("View By Specialist",style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))
                    ],
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        SortingTile(title:"View By Specialist",value:"Heart",no:"5"+" Doctors",image:"assets/heart.png"),
                        SortingTile(title:"View By Specialist",value:"Dental",no:"5"+" Doctors",image:"assets/dental.png"),
                        SortingTile(title:"View By Specialist",value:"Eye",no:"5"+" Doctors",image:"assets/eye.png"),
                        SortingTile(title:"View By Specialist",value:"More",no:"",image:"assets/more.png"),
                      ]
                    ),
                  ),
                  SizedBox(height:20),
                  Row(
                    children: [
                      SizedBox(width:24),
                      Text("View By Symptom",style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))
                    ],
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        SortingTile(title:"View By Symptom",value:"Pregnany",no:"5"+" Doctors",image:"assets/pregnant.png"),
                        SortingTile(title:"View By Symptom",value:"Fever",no:"5"+" Doctors",image:"assets/fever.png"),
                        SortingTile(title:"View By Symptom",value:"Dengue",no:"5"+" Doctors",image:"assets/dengue.png"),
                        SortingTile(title:"View By Symptom",value:"More",no:"",image:"assets/more.png"),
                      ]
                    ),
                  ),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("View By Hospital",style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                        Text("View All",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeGrey)),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HospitalTile(),
                        HospitalTile(),
                        HospitalTile(),
                      ],
                    ),
                  )
                ],
              )
            ),
          ],
        )
      )
    );
  }
}

class HospitalTile extends StatelessWidget {
  const HospitalTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.98)),
        color: Constants.themeLightBlue
      ),
      child:Column(
        children: [
          Container(
            width:79,
            height:34.9,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/hospital.png"),fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(3.99)),
            ),
          ),
          SizedBox(height:6),
          Text("Bansal Hospital",style:TextStyle(fontSize:10,fontWeight:FontWeight.w500)),
          SizedBox(height:6),
          Container(
            width:79,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/icon/location.png",width:5.98,height:5.98),
                    SizedBox(width:1.85),
                    Text("xyz",style:TextStyle(fontSize:4.99,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/star.png",width:5.98,height:5.98),
                    ),
                    SizedBox(width:1.85),
                    Align(
                      alignment: Alignment.center,
                      child: Text("3.9",style: TextStyle(fontWeight:FontWeight.w500,fontSize:4.99,color:Constants.themeGrey))
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
