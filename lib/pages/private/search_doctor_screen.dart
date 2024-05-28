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
  final List<Map<String,dynamic>>details;
  final String? value;
  const SearchDoctorsPage({
    super.key,
    required this.title,
    required this.details,
    this.value
  });
  @override
  State<SearchDoctorsPage> createState() => _SearchDoctorsPageState();
}

class _SearchDoctorsPageState extends State<SearchDoctorsPage> {
  List<Map<String,dynamic>>result=[];
  @override
  void initState(){
    super.initState();
    setState(() {
      result=widget.details;
    });
  }
  void runFilter(String search){
    if(search.isEmpty){
      result=widget.details;
      print(result.length);
      // print(result);
    }
    else{
      // result=widget.details.where((element)=>element['name'].toLowerCase().contains(search.toLowerCase())).toList();
      result = widget.details
        .where((element) =>
            element.containsKey('name') &&
            (element['name'] is String) &&
            (element['name'] as String)
                .toLowerCase()
                .contains(search.toLowerCase()))
        .toList();
      // print(result);
      print(result.length);
    }
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
                child:(result.isEmpty)?Center(child: Text("No Data"),): ListView.builder(
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
