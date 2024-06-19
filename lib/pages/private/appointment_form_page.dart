import 'package:clinic_khojo/utils/constants.dart';
import 'package:clinic_khojo/widgets/global/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
              const CommonAppBar(title: "Book Appointment", heading: "Enter Patient Details"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width*0.04),
                child:Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.15),
                            blurRadius: 4,
                            offset: const Offset(0,2),
                          ),
                        ]
                      ),
                      child: TextFormField(
                        cursorColor: Constants.themeGrey,
                        controller: nameController,
                        autofocus: false,
                        style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Constants.themeInputGrey,
                          hintText: "Full Name",
                          hintStyle: const TextStyle(color: Colors.grey,fontSize: 15),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal:15,vertical:10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: UnderlineInputBorder( 
                            borderSide: const BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon:const SizedBox(
                            width: 30,
                            child: Center(child: Icon(Icons.person,color: Constants.themeGrey,),)
                          )  
                        ),
                      ),
                    ),
                    const SizedBox(height:9),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.15),
                            blurRadius: 4,
                            offset: const Offset(0,2),
                          ),
                        ]
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.black,
                        controller: phoneNumberController,
                        autofocus: false,
                        style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey),
                        inputFormatters:[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Constants.themeInputGrey,
                          hintText: "xxxxxxxxxx",
                          hintStyle: const TextStyle(color: Colors.grey,fontSize: 15),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal:15,vertical:10),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: UnderlineInputBorder( 
                            borderSide: const BorderSide(color: Constants.themeInputGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          prefixIcon:const SizedBox(
                            width: 30,
                            child: Center(child: Icon(Icons.call,color: Constants.themeGrey,),)
                          )  
                        ),
                      ),
                    ),
                    const SizedBox(height:5),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Different whatsapp number?",style:TextStyle(fontSize:12 ,fontWeight:FontWeight.w400,color:Constants.textRed,decoration:TextDecoration.underline,decorationColor:Constants.textRed),)
                      ],
                    ),
                    const SizedBox(height:5),
                    Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            width:double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.15),
                                  blurRadius: 4,
                                  offset: const Offset(0,2),
                                ),
                              ]
                            ),
                            child: DropdownButtonFormField(
                              hint: const Text("Gender",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Constants.themeInputGrey,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal:15,vertical:10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: UnderlineInputBorder( 
                                  borderSide: const BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon:const SizedBox(
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
                                  child: Text(value,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
                                  value: value,
                                );
                              }).toList()
                            ),
                          ),
                        ),
                        const SizedBox(width:8),
                        Expanded(
                          flex:1,
                          child:Container(
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.15),
                                  blurRadius: 4,
                                  offset: const Offset(0,2),
                                ),
                              ]
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              cursorColor: Colors.black,
                              controller: ageController,
                              autofocus: false,
                              style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey),
                              inputFormatters:[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(3)
                              ],
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Constants.themeInputGrey,
                                hintText: "Age",
                                hintStyle: const TextStyle(color: Colors.grey,fontSize: 15),
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal:15,vertical:10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: UnderlineInputBorder( 
                                  borderSide: const BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon:const SizedBox(
                                  width: 30,
                                  child: Center(child: Icon(Icons.stacked_bar_chart,color: Constants.themeGrey,),)
                                )  
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height:9),
                    Row(
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(
                            width:double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(Radius.circular(5)),
                              boxShadow: [
                                BoxShadow(
                                  color:Colors.black.withOpacity(0.15),
                                  blurRadius: 4,
                                  offset: const Offset(0,2),
                                ),
                              ]
                            ),
                            child: DropdownButtonFormField(
                              hint: const Text("Select Block",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Constants.themeInputGrey,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal:15,vertical:10),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                enabledBorder: UnderlineInputBorder( 
                                  borderSide: const BorderSide(color: Constants.themeInputGrey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                prefixIcon:const SizedBox(
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
                                  child: Text(value,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Constants.themeGrey)),
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
              const SizedBox(height: 15,),
              Row(
                children: [
                  SizedBox(width:width*0.02),
                  const Text("Clinic Location",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Constants.themeSubheadingGrey)),
                ],
              ),
              const SizedBox(height:15),
              //map aayega yaha par
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height:height*0.15, 
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image:AssetImage("assets/map.png"),
                          fit: BoxFit.cover
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                        boxShadow: [
                          BoxShadow(
                            color:Colors.black.withOpacity(0.2),
                            blurRadius: 5,
                            offset: const Offset(0,2),
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height:15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
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
                            borderRadius: const BorderRadius.all(Radius.circular(20))
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                          child: const Row(
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
              ),
              const SizedBox(height: 35,),
              Center(
                child:GestureDetector(
                  onTap: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Container(
                    width:width*0.7,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color:Constants.feeGreen
                    ),
                    child: const Center(child: Text("Payment and Book",style:TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.bold)))
                  ),
                )
              )
            ],
          ),
        )
      )
    );
  }
}