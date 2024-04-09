import 'package:clinic_khojo/pages/private/search_doctor_screen.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/features/home_page/sort_tile.dart';
import 'package:clinic_khojo/widgets/global/search_bar.dart';
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
                    Text("Welcome Back!",style:GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
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
                              GestureDetector(
                                onTap:(){
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => SearchDoctors()));
                                },
                                child: Text("Explore Doctors",style:GoogleFonts.poppins(fontSize:20,fontWeight:FontWeight.w500,color:Constants.themeHeadingBlue))
                              )
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
                                    Text("Ayushmaan",style:GoogleFonts.poppins(fontSize:8,fontWeight:FontWeight.w500)),
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
                                    Text("ABHA",style:GoogleFonts.poppins(fontSize:8,fontWeight:FontWeight.w500)),
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
                  CustomSearchBar(),
                  SizedBox(height:20),
                  Row(
                    children: [
                      SizedBox(width:24),
                      Text("View By Specialist",style:GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))
                    ],
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        SortingTile(title:"Heart",no:"5"+" Doctors",image:"assets/heart.png"),
                        SortingTile(title:"Dental",no:"5"+" Doctors",image:"assets/dental.png"),
                        SortingTile(title:"Eye",no:"5"+" Doctors",image:"assets/eye.png"),
                        SortingTile(title:"More",no:"",image:"assets/more.png"),
                      ]
                    ),
                  ),
                  SizedBox(height:20),
                  Row(
                    children: [
                      SizedBox(width:24),
                      Text("View By Symptom",style:GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))
                    ],
                  ),
                  SizedBox(height:10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        SortingTile(title:"Pregnany",no:"5"+" Doctors",image:"assets/pregnant.png"),
                        SortingTile(title:"Fever",no:"5"+" Doctors",image:"assets/fever.png"),
                        SortingTile(title:"Dengue",no:"5"+" Doctors",image:"assets/dengue.png"),
                        SortingTile(title:"More",no:"",image:"assets/more.png"),
                      ]
                    ),
                  ),
                  SizedBox(height:20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("View By Hospital",style:GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                        Text("View All",style:GoogleFonts.poppins(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeGrey)),
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
          Text("Bansal Hospital",style:GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w500)),
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
                    Text("xyz",style:GoogleFonts.poppins(fontSize:4.99,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
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
                      child: Text("3.9",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:4.99,color:Constants.themeGrey))
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
