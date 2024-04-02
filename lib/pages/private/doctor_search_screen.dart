import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/global/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SearchDoctors extends StatefulWidget {
  const SearchDoctors({super.key});

  @override
  State<SearchDoctors> createState() => _SearchDoctorsState();
}

class _SearchDoctorsState extends State<SearchDoctors> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.white,
        body:Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            children:[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  CommonAppBar(
                    title: 'Doctors Near You',
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child:Text("Top Doctors",style: TextStyle(color: Constants.themeBlue,fontSize: 28,fontWeight: FontWeight.w500),
                  )
                  ),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height:40,
                        width:width*0.75,
                        decoration: BoxDecoration(
                          border:Border.all(
                            width: 2,
                            color:Constants.themeGrey
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(27.5))
                        ),
                        child:Row(
                          children:[
                            Container(
                              alignment: Alignment.center,
                              width:50,
                              child: Icon(
                                Icons.search,
                                size:25,
                                color:Constants.themeGrey
                              ),
                            ),
                            Expanded(
                              child:TextFormField(
                                
                              )
                            ),
                            Container(
                              alignment: Alignment.center,
                              width:60,
                              decoration: BoxDecoration(
                                border:Border(
                                  left:BorderSide(
                                    width:2,
                                    color: Constants.themeGrey
                                  ),
                                ),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(27.5),
                                bottomRight: Radius.circular(27.5)),
                                color: Color.fromARGB(255, 245, 226, 225)
                              ),
                              child: Icon(
                                Icons.equalizer,
                                size:25,
                                color:Colors.red
                              ),
                            )
                          ]
                        )
                      )
                    ],
                  )
                ]
              )
            ]
          ),
        )
      )
    );
  }
}