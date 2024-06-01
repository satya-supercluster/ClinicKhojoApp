
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
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 6),
      width:(width-32)/3-10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.98)),
        color: Constants.themeLightBlue
      ),
      child:Column(
        children: [
          Container(
            height:width*0.13,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/hospital.png"),fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(3.99)),
            ),
          ),
          SizedBox(height:6),
          Row(
            children: [
              Expanded(
                child: Center(
                  child: Text("Bansal Hospital",style:TextStyle(fontSize:10,fontWeight:FontWeight.w500))
                )
              ),
            ],
          ),
          SizedBox(height:6),
          Container(
            width:79,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/icon/location.png",width:width*0.03,height:width*0.03),
                    SizedBox(width:1.85),
                    Text("xyz",style:TextStyle(fontSize:4.99,fontWeight:FontWeight.w500,color:Constants.themeSubheadingGrey)),
                  ],
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/star.png",width:5.98,height:5.98),
                    ),
                    SizedBox(width:1.85),
                    Align(
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
