
import 'package:clinic_khojo/data.dart';
import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/pages/private/home_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/features/search_doctor/doctors_tile.dart';
import 'package:clinic_khojo/widgets/features/search_doctor/hospitals_tile.dart';
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
  List<Map<String,dynamic>>result=[];
  void initState(){
    super.initState();
    setState(() {
      result=l;
    });
  }
  void runFilter(String search){
    // if(search.isEmpty){
    //   setState(() {
    //     result=l;
    //   });
    // }
    // else{
    if(result.isNotEmpty)
      result=l.where((element)=>element['name'].toLowerCase().contains(search.toLowerCase())).toList();
    // }
    print(search);
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height;
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
                heading: "Search Doctors"
              ),
              CustomSearchBar(action:runFilter), 
              SizedBox(height:20),
              Expanded(
                child:(result==[])?Center(child: Text("No Data"),): ListView.builder(
                  itemCount: result.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        DoctorsTile(map: result[index],),
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
