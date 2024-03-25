
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmergencyAppointmentTile extends StatefulWidget {
  final String name;
  final String age;
  final String place;
  final String gender;
  final String day;
  final String month;
  final String year;
  final String start;
  final String end;
  const EmergencyAppointmentTile({
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
  State<EmergencyAppointmentTile> createState() => _EmergencyAppointmentTileState();
}

class _EmergencyAppointmentTileState extends State<EmergencyAppointmentTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height:70,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black12,width:2)
      ),
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14)
              ),
              color: Color.fromARGB(255, 19, 3, 190),
            ),
            width:(MediaQuery.of(context).size.width)/4,
            padding: EdgeInsets.all(5),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.alarm,
                      size:15,
                      color: Colors.white,
                    ),
                    SizedBox(width:5),
                    Text(widget.day+" "+widget.month,style:TextStyle(fontSize: 12,color: Colors.white))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.start+"-"+widget.end,style:TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.white))
                  ],
                )
              ],
            )
          ),
          Container(
            width:2.5*((MediaQuery.of(context).size.width)/4),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width:5),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(widget.name,style:TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black)),
                          SizedBox(width:5),
                          Container(
                            padding: EdgeInsets.all(2),
                            color: Colors.red,
                            child: Text("Emergency",style:TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Colors.white))
                          )
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
                          SizedBox(width:10),
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
          )
        ],
      )
    );
  }
}