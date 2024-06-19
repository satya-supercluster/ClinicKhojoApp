import 'package:clinic_khojo/pages/private/available_hospitals_page.dart';
import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';
class DoctorsTile extends StatefulWidget {
  final Map<String,dynamic> map;
  const DoctorsTile({
    required this.map,
    super.key,
  });

  @override
  State<DoctorsTile> createState() => _DoctorsTileState();
}

class _DoctorsTileState extends State<DoctorsTile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => AvailableHospitalsPage(doctorsDetails:widget.map)));
      },
      child: Container(
        width:width,
        padding: const EdgeInsets.all(8),
        decoration:const BoxDecoration(
          color:Color.fromARGB(255, 231, 236, 255),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width:width*0.2,
                  height: width*0.2,
                  padding:const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.map['image']??"assets/doctor.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8))
                  ),
                )
              ],
            ),
            const SizedBox(width:10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text("${widget.map['name']}",style: const TextStyle(fontWeight:FontWeight.bold,fontSize:18),)
                    ],
                  ),
                  const SizedBox(height: 5,),
                  // Degree, Specialization and Fee
                  Row(
                    children: [
                      Text("${widget.map['degree']}",style: const TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),),
                      const SizedBox(width:12),
                      Text("Fee: ₹${widget.map['fee']}",style: const TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Colors.green),),
                      const SizedBox(width:12),
                      Expanded(child: Text("${widget.map['specialization']} Specialist",style: const TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),)),
                    ],
                  ),
                  const SizedBox(height:1),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // image of star should be added here
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/star.png",width:12,height:12),
                      ),
                      const SizedBox(width:3.7),
                      Align(
                        alignment: Alignment.center,
                        child: Text("${widget.map['rating']}",style: const TextStyle(fontWeight:FontWeight.w500,fontSize:10,color:Constants.themeGrey))
                      ),
                      const SizedBox(width:12),
                      Expanded(child: Text("Location: ${widget.map['location']}",style: const TextStyle(fontWeight:FontWeight.w500,fontSize:11,color:Constants.themeGrey),)),
                    ],
                  ),
                  const SizedBox(height:1),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => DoctorProfile(map:widget.map)));
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                          child: const Text("View Profile",style: TextStyle(fontWeight:FontWeight.w500,fontSize:14,decoration:TextDecoration.underline,color:Colors.red,decorationColor:Colors.red),)
                        )
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}