import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/services/functions/common_functions.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppointmentDetailsPage extends StatefulWidget {
  final String title;
  final Map<String,dynamic> map;
  const AppointmentDetailsPage({
    required this.title,
    required this.map,
    super.key,
  });

  @override
  State<AppointmentDetailsPage> createState() => _AppointmentDetailsPageState();
}

class _AppointmentDetailsPageState extends State<AppointmentDetailsPage> {
  late String currMonth;
  @override
    void initState() {
      super.initState();
      setState(() {
        currMonth=getMonth(DateTime.now());
      });
    }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height; // Gives the width
    return SafeArea(
      child: Scaffold(
        backgroundColor:Constants.themeLightBlue,
        body: Container(
          constraints: BoxConstraints(
            maxHeight: height,
          ),
          child: Column(
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
                        widget.title,
                        style: TextStyle(color: Constants.themeGrey,fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width:width,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width:width*0.33,
                                          height: width*0.252,
                                          margin:EdgeInsets.only(top:5,right:3),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(widget.map['image']??""),
                                              fit: BoxFit.fill,
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(8))
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: 3,
                                      right: 0,
                                      child:Container(
                                        width:10.21,
                                        height:10,
                                        decoration: BoxDecoration(
                                          color:Colors.green,
                                          borderRadius: BorderRadius.all(Radius.circular(27)),
                                          border:Border.all(width:1,color: Colors.white)
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width:24),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  //Title
                        
                                  Text("${widget.map['title']}",style: TextStyle(fontWeight:FontWeight.bold,fontSize:18),),
                        
                                  SizedBox(height:4),
                                  // Degree, Specialization and Fee
                        
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${widget.map['degree']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey),),
                                      SizedBox(width:5),
                                      Expanded(
                                        child: Center(child: Text("${widget.map['specialization']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey),))
                                      ),
                                      SizedBox(width:5),
                                      Text("Fee: ₹${widget.map['fee']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Colors.green),),
                                    ],
                                  ),
                                  SizedBox(height:12),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        padding:EdgeInsets.fromLTRB(8.5, 6, 8.5, 6),
                                        decoration:BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(2)),
                                        ),
                                        child: Text("Appointment",style: TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey)),
                                      ),
                                      SizedBox(width:24),
                                      // image of star should be added here
                                      Align(
                                        alignment: Alignment.center,
                                        child: Image.asset("assets/star.png",width:12,height:12),
                                      ),
                                      SizedBox(width:3.7),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text("${widget.map['rating']}",style: TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey))
                                      )
                                    ],
                                  ),
                                  SizedBox(height:12),
                                  Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width:30,
                                            height: 30,
                                            padding:EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(widget.map['dp']??""),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(8))
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(width:8),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(widget.map['name']??"",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14),),
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (BuildContext context) => DoctorProfile(map:widget.map)));
                                            },
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(0, 1, 0, 1),
                                              child: Text("View Profile",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14,decoration:TextDecoration.underline,color:Colors.red,decorationColor:Colors.red),)
                                            )
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:25),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child:Container(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Address",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Constants.themeBlue)),
                                  SizedBox(height:2),
                                  Text("123,xyz,Lucknow",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey))
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Timings",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500,color: Constants.themeBlue)),
                                  SizedBox(height:2),
                                  Text("Mon-Fri  11am-6pm",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey)),
                                  SizedBox(height:2),
                                  Text("Sat-Sun  11am-3pm",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey)),
                        
                                ],
                              )
                            ],
                          ),
                        )
                      ),
                      SizedBox(height:25),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Schedules",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey)),
                            Row(
                              children: [
                                Text(currMonth,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color:Constants.textRed,)),
                                SizedBox(width:8),
                                Icon(Icons.arrow_forward_ios,color:Constants.textRed,size: 12,)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color:Constants.themeLightRed,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: DatePicker(
                              DateTime.now(),
                              height:width/5,
                              width:width/5-10,
                              initialSelectedDate: DateTime.now(),
                              selectionColor: Constants.themeBlue,
                              selectedTextColor: Colors.white,
                              dayTextStyle: TextStyle(fontSize: 12),
                              dateTextStyle: TextStyle(fontSize: 12),
                              monthTextStyle: TextStyle(fontSize:0,color: Constants.themeLightBlue),
                              deactivatedColor:Constants.themeGrey,
                              onDateChange: (date){
                                print(getMonth(date));
                                setState(() {
                                  currMonth=getMonth(date);
                                });
                              },
                            ),
                          ),
                          Positioned(
                            top: width/10-10,
                            left:10,
                            child: Container(
                              width: 20,
                              height:20,
                              decoration: BoxDecoration(
                                color:Constants.themeLightRed,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              alignment: Alignment.center,
                              child: Icon(Icons.arrow_back_ios,color: Constants.textRed,size:12),
                            )
                          ),
                          Positioned(
                            top: width/10-10,
                            right:10,
                            child: Container(
                              width: 20,
                              height:20,
                              decoration: BoxDecoration(
                                color:Constants.themeLightRed,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              alignment: Alignment.center,
                              child: Icon(Icons.arrow_forward_ios,color: Constants.textRed,size:12),
                            )
                          )
                        ],
                      ),
                      SizedBox(height:25),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Fees",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey)),
                          ],
                        ),
                      ),
                      SizedBox(height:10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child:Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Normal Appointment fees",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Constants.themeSubheadingGrey)),
                                SizedBox(width:20),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(text:"₹${widget.map['fee']}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Constants.feeGreen)),
                                      TextSpan(text:"+₹50 booking charge",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300,color: Constants.themeSubheadingGrey))
                                    ]
                                  )
                                )
                              ],
                            ),
                            SizedBox(height:10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Emergency Appointment fees",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Constants.themeSubheadingGrey)),
                                SizedBox(width:20),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(text:"₹${widget.map['fee']}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Constants.textRed)),
                                      TextSpan(text:"+₹50 booking charge",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300,color: Constants.themeSubheadingGrey))
                                    ]
                                  )
                                )
                              ],
                            ),     
                          ],
                        )
                      ),
                      SizedBox(height:40),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width:double.infinity,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              margin: EdgeInsets.symmetric(horizontal: 32),
                              decoration: BoxDecoration(
                                color:Constants.textRed,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child:Text("Book Emergency Appointment",style:TextStyle(fontSize:13,fontWeight: FontWeight.w500,color: Colors.white))
                            )
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32,vertical: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color:Constants.themeGrey,
                              ),
                            ),
                            Text(" or ",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey),),
                            Expanded(
                              child: Divider(
                                color:Constants.themeGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width:double.infinity,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 8),
                              margin: EdgeInsets.symmetric(horizontal: 32),
                              decoration: BoxDecoration(
                                color:Constants.feeGreen,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child:Text("Book Normal Appointment",style:TextStyle(fontSize:13,fontWeight: FontWeight.w500,color: Colors.white))
                            )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}