import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/global/common_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentFormPage extends StatefulWidget {
  const AppointmentFormPage({super.key});

  @override
  State<AppointmentFormPage> createState() => _AppointmentFormPageState();
}

class _AppointmentFormPageState extends State<AppointmentFormPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController phoneNumberController=TextEditingController();
    TextEditingController ageController=TextEditingController();
    var _genderValue=null;
    var _blockValue=null;
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height;
    List<String> blocks=["Bachhwara",
      "Bakhari",
      "Balia",
      "Barauni",
      "Begusarai",
      "Bhagwanpur",
      "Birpur",
      "Cheriabariyarpur",
      "Chhorahi",
      "Dandari",
      "Garhpura",
      "Khodawandpur",
      "Mansurchak",
      "Matihani",
      "Naokothi",
      "Sahebpur Kamal",
      "Samho Akha Kurha",
      "Teghra"
    ];
    return SafeArea(
      child: Scaffold(
        body:Container(
          width:width,
          padding: EdgeInsets.symmetric(horizontal: width*0.044),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonAppBar(title: "Book Appointment", heading: "Enter Patient Details"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width*0.04),
                child:Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.15),
                            blurRadius: 4,
                            offset: Offset(0,2),
                          ),
                        ]
                      ),
                      child: TextFormField(
                        cursorColor: Constants.themeGrey,
                        controller: nameController,
                        autofocus: false,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Constants.themeInputGrey,
                          hintText: "Full Name",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal:15,vertical:10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: UnderlineInputBorder( 
                            borderSide: BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon:SizedBox(
                            width: 30,
                            child: Center(child: Icon(Icons.person,color: Constants.themeGrey,),)
                          )  
                        ),
                      ),
                    ),
                    SizedBox(height:9),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.15),
                            blurRadius: 4,
                            offset: Offset(0,2),
                          ),
                        ]
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.black,
                        controller: phoneNumberController,
                        autofocus: false,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey),
                        inputFormatters:[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Constants.themeInputGrey,
                          hintText: "xxxxxxxxxx",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal:15,vertical:10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: UnderlineInputBorder( 
                            borderSide: BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon:SizedBox(
                            width: 30,
                            child: Center(child: Icon(Icons.call,color: Constants.themeGrey,),)
                          )  
                        ),
                      ),
                    ),
                    SizedBox(height:5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Different whatsapp number?",style:TextStyle(fontSize:12 ,fontWeight:FontWeight.w400,color:Constants.textRed,decoration:TextDecoration.underline,decorationColor:Constants.textRed),)
                      ],
                    ),
                    SizedBox(height:5),
                    Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            width:double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.15),
                                  blurRadius: 4,
                                  offset: Offset(0,2),
                                ),
                              ]
                            ),
                            child: DropdownButtonFormField(
                              hint: Text("Gender",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Constants.themeInputGrey,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal:15,vertical:10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: UnderlineInputBorder( 
                                  borderSide: BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon:SizedBox(
                                  width: 30,
                                  child: Center(child: Icon(Icons.male,color: Constants.themeGrey,),)
                                )  
                              ),
                              value:_genderValue,
                              onChanged: (newValue){
                                setState(() {
                                  _genderValue=newValue;
                                });
                              },
                              items: ["Male","Female","Others"].map((value){
                                return DropdownMenuItem(
                                  child: Text(value,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
                                  value: value,
                                );
                              }).toList()
                            ),
                          ),
                        ),
                        SizedBox(width:8),
                        Expanded(
                          flex:1,
                          child:Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.15),
                                  blurRadius: 4,
                                  offset: Offset(0,2),
                                ),
                              ]
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              cursorColor: Colors.black,
                              controller: ageController,
                              autofocus: false,
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey),
                              inputFormatters:[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(3)
                              ],
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Constants.themeInputGrey,
                                hintText: "Age",
                                hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal:15,vertical:10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: UnderlineInputBorder( 
                                  borderSide: BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon:SizedBox(
                                  width: 30,
                                  child: Center(child: Icon(Icons.stacked_bar_chart,color: Constants.themeGrey,),)
                                )  
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height:9),
                    Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            width:double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.15),
                                  blurRadius: 4,
                                  offset: Offset(0,2),
                                ),
                              ]
                            ),
                            child: DropdownButtonFormField(
                              hint: Text("Select Block",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Constants.themeInputGrey,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal:15,vertical:10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: UnderlineInputBorder( 
                                  borderSide: BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon:SizedBox(
                                  width: 30,
                                  child: Center(child: Icon(Icons.add_business_outlined,color: Constants.themeGrey,),)
                                )  
                              ),
                              value:_blockValue,
                              onChanged: (newValue){
                                setState(() {
                                  _blockValue=newValue;
                                });
                              },
                              items: blocks.map((value){
                                return DropdownMenuItem(
                                  child: Text(value,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
                                  value: value.split(" ").last,
                                );
                              }).toList()
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width:width*0.02),
                  Text("Clinic Location",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey)),
                ],
              ),
              SizedBox(height:15),
              //map aayega yaha par
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height:height*0.15, 
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Constants.themeBlue)),
                            SizedBox(height:10),
                            Text("123,xyz,Lucknow",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:Border.all(width: 1,color: Constants.textRed),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          padding: EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                          child: Row(
                            children: [
                              Icon(Icons.directions,size:12,color:Constants.textRed),
                              SizedBox(width:8),
                              Text("Directions",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Constants.textRed))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}