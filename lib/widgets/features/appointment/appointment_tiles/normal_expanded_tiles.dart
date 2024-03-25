import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NormalExpandedAppointmentTile extends StatefulWidget {
  final  String name;
  final  String age;
  final  String place;
  final  String gender;
  final  String day;
  final  String month;
  final  String year;
  final  String start;
  final  String end;
  const NormalExpandedAppointmentTile({
    super.key,
    required this.name,
    required this.day,
    required this.month,
    required this.year,
    required this.age,
    required this.place,
    required this.gender,
    required this.start,
    required this.end
  });

  @override
  State<NormalExpandedAppointmentTile> createState() => _NormalExpandedAppointmentTileState();
}

class _NormalExpandedAppointmentTileState extends State<NormalExpandedAppointmentTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height:140,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black12,width:2)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child:Container(
                  height: 58,
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    ),
                    color:Color.fromARGB(255, 57, 17, 218),                    
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("Appointment Request",style:TextStyle(fontSize: 14,color: Colors.white54))
                        ],
                      ),
                      // SizedBox(height:2),
                      Row(
                        children: [
                          Icon(Icons.alarm,size:20,color:Colors.white),
                          SizedBox(width:5),
                          Text(widget.day+" "+widget.month+" "+widget.year+", "+widget.start+"-"+widget.end,style:TextStyle(fontSize: 15,color: Colors.white))
                        ],
                      )
                    ],
                  )
                )
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height:78,
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    ),                   
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex:1,
                            child: Icon(Icons.person,size:40,color:Colors.black)
                          ),
                          SizedBox(width:10),
                          Expanded(
                            flex:5,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(widget.name,style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child:Text("Age:"+widget.age,style:TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black54)),
                                    ),
                                    SizedBox(width:10),
                                    Container(
                                      child:Text("Gender:"+widget.gender,style:TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black54)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child:Text("Place:"+widget.place,style:TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.black54)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                )
              )
            ],
          )
        ],
      ),
    );
  }
}