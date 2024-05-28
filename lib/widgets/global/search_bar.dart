import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/global/filter_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatefulWidget {
  final Function action;
  const CustomSearchBar({
    super.key, required this.action
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  String filter="";
  List<Map<String,dynamic>> filters=[];
  TextEditingController searchController=TextEditingController();
  void initState(){
    super.initState();
    filter="";
    filters=[
      {
        "filter":"Specialization",
        "enabled":false
      },
      {
        "filter":"Symptom",
        "enabled":false
      },
      {
        "filter":"Doctor",
        "enabled":false
      },
      {
        "filter":"Location",
        "enabled":false 
      },
      {
        "filter":"Hospital/Clinic",
        "enabled":false
      },
    ];
  }
  void setFilter(String s){
    setState(() {
      filter=s;
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height;
    return Container(
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
              cursorColor: Colors.black,
              autofocus: true,
              controller: searchController,
              // onEditingComplete:widget.action(searchController.text) ,
              onChanged: (value) => widget.action(value),
              decoration: InputDecoration(
                hintText: "Search Doctors...",
                hintStyle: GoogleFonts.poppins(fontSize:12,),
                contentPadding: EdgeInsets.only(left:4,bottom:10),
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
          GestureDetector(
            onTap:(){
               FocusScope.of(context).requestFocus(FocusNode());
              showModalBottomSheet(context: context, builder: (ctx)=>FilterBottomSheet(setFilter:setFilter,filters:filters));
            },
            child: Container(
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
            ),
          )
        ]
      )
    );
  }
}