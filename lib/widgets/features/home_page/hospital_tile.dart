
import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';

class HospitalTile extends StatefulWidget {
  const HospitalTile({
    super.key,
  });

  @override
  State<HospitalTile> createState() => _HospitalTileState();
}

class _HospitalTileState extends State<HospitalTile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 6),
      width:(width-32)/3-10,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.98)),
        color: Constants.themeLightBlue
      ),
      child:Column(
        children: [
          Container(
            height:width*0.13,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/hospital.png"),fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(3.99)),
            ),
          ),
          const SizedBox(height:6),
          const Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("Bansal Hospital",style:TextStyle(fontSize:10,fontWeight:FontWeight.w500))
                )
              ),
            ],
          ),
          const SizedBox(height:6),
          Container(
            width:79,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/icon/location.png",width:width*0.03,height:width*0.03),
                    const SizedBox(width:1.85),
                    const Text("xyz",style:TextStyle(fontSize:4.99,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/star.png",width:5.98,height:5.98),
                    ),
                    const SizedBox(width:1.85),
                    const Align(
                      alignment: Alignment.center,
                      child: Text("3.9",style: TextStyle(fontWeight:FontWeight.w500,fontSize:4.99,color:Constants.themeGrey))
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
