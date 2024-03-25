import 'package:clinic_khojo/widgets/features/appointment/appointment_lists/emergency_appointment_list.dart';
import 'package:clinic_khojo/widgets/features/appointment/appointment_lists/normal_appointment_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  bool emergency=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body:SafeArea(
        child: Container(
          child:Column(
            children: [
              SizedBox(height:20),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Welcome Back!",style:TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w500,fontSize: 15))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Appointments",style:TextStyle(color: Color.fromARGB(255, 41, 7, 233),fontWeight: FontWeight.w600,fontSize: 24))
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border:Border(
                    bottom: BorderSide(
                    width:1,
                    color: Color.fromARGB(255, 99, 97, 97)
                  ),
                    top:BorderSide(
                    width:1,
                    color: Color.fromARGB(255, 99, 97, 97)
                  ),
                    ),
                ),
                child:Row(
                  children:[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: (emergency==false)?Color.fromARGB(255, 253, 202, 200):Colors.white,
                        border:Border(
                          bottom: BorderSide(
                          width:3,
                          color:(emergency==false)?Color.fromARGB(255, 236, 36, 22):Colors.white ,
                        ),)
                      ),
                      width:MediaQuery.of(context).size.width/2,
                      child:InkWell(
                        onTap: ()=>{
                          setState(() {
                            emergency=false;
                          })
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Normal",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:(emergency==false)?Colors.red:Colors.grey[600],)),
                          ],
                        ),
                      )
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: (emergency==true)?Color.fromARGB(255, 253, 202, 200):Colors.white,
                        border:Border(
                          bottom: BorderSide(
                          width:3,
                          color:(emergency==true)?Color.fromARGB(255, 236, 36, 22):Colors.white ,
                          ),
                        )
                      ),
                      width:MediaQuery.of(context).size.width/2,
                      child:InkWell(
                        onTap: ()=>{
                          setState(() {
                            emergency=true;
                          })
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Emergency",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:(emergency==true)?Colors.red:Colors.grey[600],)),
                          ],
                        ),
                      )
                    ),
                  ]
                )
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: (emergency==true)?EmergencyAppointmentList():NormalAppointmentList(),
                ),
              )
            ],
          )
        ),
      ),
      bottomNavigationBar:Container(
        color: Color.fromARGB(255, 255, 184, 179),
        padding: EdgeInsets.symmetric(vertical:20,horizontal: 5),
        child: Row(
          children:[
            Expanded(
              flex:1,
              child: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex:1,
              child: Icon(Icons.account_circle),
            ),
            Expanded(
              flex:1,
              child: Icon(Icons.logout),
            ),
            Expanded(
              flex:1,
              child: Text(""),
            )
          ]
        )
      ),
      // bottomNavigationBar: Container(
      //   width:double.infinity,
      //   height:80,
      //   child:Row(
      //     children:[
      //       Expanded(
      //         flex:3,
      //         child:BottomNavigationBar(
      //           type:BottomNavigationBarType.shifting,
      //           showUnselectedLabels: false,
      //           selectedItemColor: Colors.red,
      //           unselectedItemColor: Colors.grey[600],
      //           items:[
      //             BottomNavigationBarItem(icon: Icon(Icons.home),label:"•"),
      //             BottomNavigationBarItem(icon: Icon(Icons.account_circle),label:"•"),
      //             BottomNavigationBarItem(icon: Icon(Icons.logout),label:"•"),
      //           ]
      //         )
      //       ),
      //       Expanded(
      //         flex:1,
      //         child:Text("")
      //       )
      //     ]
      //   )
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.support),
      //   onPressed: (){},
      // ),
    );
  }
}