import 'package:clinic_khojo/services/functions/common_functions.dart';
import 'package:clinic_khojo/widgets/features/search_doctor/doctors_tile.dart';
import 'package:clinic_khojo/widgets/global/common_appbar.dart';
import 'package:clinic_khojo/widgets/global/search_bar.dart';
import 'package:flutter/material.dart';

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
      // print(result.length);
      // print(result);
    }
    else{
      // result = widget.details
      //   .where((element) =>
      //       element.containsKey('name') &&
      //       (element['name'] is String) &&
      //       (element['name'] as String)
      //           .toLowerCase()
      //           .contains(search.toLowerCase()))
      //   .toList();
      // print(result);
      result=searchDoctors(widget.details, search);
      // print(result.length);
    }
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
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
              const SizedBox(height:20),
              Expanded(
                child:(result.isEmpty)?const Center(child: Text("No Data"),): ListView.builder(
                  itemCount: result.length,
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        DoctorsTile(map: result[index],),
                        const SizedBox(height:20),
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
