import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';

class SortingTile extends StatefulWidget {
  final String no;
  final String image;
  final String value;
  const SortingTile({
    super.key,
    required this.no,
    required this.image,
    required this.value
  });

  @override
  State<SortingTile> createState() => _SortingTileState();
}

class _SortingTileState extends State<SortingTile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width:width*0.2,
            height:width*0.2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color:Constants.themeLightBlue,
            ), 
            child:Center(
              child:Image.asset(widget.image,width:width*0.14,height:width*0.14,fit: BoxFit.fill,)
            )
          ),
          const SizedBox(height:8),
          Text(widget.value,style: const TextStyle(fontSize:12,fontWeight:FontWeight.w500),),
          // SizedBox(height:1),
          Text(widget.no,style: TextStyle(fontSize:10,fontWeight:FontWeight.w500,color:(widget.value=='More')?Colors.white:Constants.themeGrey))
        ],
      )
    );
  }
}