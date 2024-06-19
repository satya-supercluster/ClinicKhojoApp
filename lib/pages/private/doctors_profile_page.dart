import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  final Map<String,dynamic> map;
  const DoctorProfile({
    super.key,
    required this.map,
  });

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body:Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
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
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 24),
                        child: const Icon(
                          size: 22,
                          Icons.arrow_back_ios,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 24),
                    alignment: Alignment.center,
                    child: Text(
                      '${widget.map['name']}',
                      style: const TextStyle(color: Constants.themeGrey,fontSize: 14,fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height:50),
                      Container(
                        width:width*0.25,
                        height:width*0.25,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          // boxShadow: BoxShadow()
                          image: DecorationImage(image: AssetImage("assets/doctor.jpg"),fit: BoxFit.cover,)
                        ),
                      ),
                      const SizedBox(height:8),
                      Text('${widget.map['name']}',style:const TextStyle(fontSize:18,fontWeight:FontWeight.w500,color:Constants.themeHeadingBlue))
                    ],
                  ),
                ],
              ),
              const SizedBox(height:30),
              const Row(
                children: [
                  SizedBox(width:8),
                  Text("More Details",style:TextStyle(fontSize:18,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))
                ],
              ),
              const SizedBox(height:10),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                decoration: const BoxDecoration(
                  color: Constants.themeLightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child:Column(
                  children: [
                    const Row(
                      children: [
                        Text("Gender:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text("Male",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    const SizedBox(height:8),
                    Row(
                      children: [
                        const Text("Address:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        const SizedBox(width:24),
                        Expanded(child: Text('${widget.map['location']}',style:const TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    const SizedBox(height:8),
                    Row(
                      children: [
                        const Text("Degree:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        const SizedBox(width:24),
                        Expanded(child: Text('${widget.map['degree']}',style:const TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    const SizedBox(height:8),
                    Row(
                      children: [
                        const Text("Specialization:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        const SizedBox(width:24),
                        Expanded(child: Text('${widget.map['specialization']}',style:const TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    const SizedBox(height:8),
                    const Row(
                      children: [
                        Text("Years of Experience:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        SizedBox(width:24),
                        Expanded(child: Text("2",style:TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    const SizedBox(height:8),
                    Row(
                      children: [
                        const Text("Title of clinic:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        const SizedBox(width:24),
                        Expanded(child: Text('${widget.map['title']}',style:const TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    const SizedBox(height:8),
                    Row(
                      children: [
                        const Text("Title of clinic:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        const SizedBox(width:24),
                        Expanded(child: Text('${widget.map['title']}',style:const TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                    const SizedBox(height:8),
                    Row(
                      children: [
                        const Text("Title of clinic:",style:TextStyle(fontSize:10,fontWeight:FontWeight.w400,color:Constants.themeGrey)),
                        const SizedBox(width:24),
                        Expanded(child: Text('${widget.map['title']}',style:const TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey))),
                      ],
                    ),
                  ],
                )
              )
            ],
          ),
        )
      )
    );
  }
}