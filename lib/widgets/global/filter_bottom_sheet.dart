

import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';

class FilterBottomSheet extends StatefulWidget {
  final Function setFilter;
  final List<Map<String,dynamic>> filters;
  const FilterBottomSheet({
    super.key,
    required this.setFilter, required this.filters,
  });

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      width:double.infinity,
      height:height*0.3,
      padding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width:width*0.4,
                height:5,
                decoration: BoxDecoration(
                  color:Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
              )
            ],
          ),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Filter by:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:Constants.themeBlue),),
            ],
          ),
          SizedBox(height:10),
          // Expanded(
          //   child:ListView.builder(
          //     itemCount: widget.filters.length,
          //     itemBuilder: (context,index){
          //       return GestureDetector(
          //         onTap:(){
          //           setState(() {
          //             bool pre=widget.filters[index]['enabled'];
          //             for(int i=0;i<widget.filters.length;i++){
          //               widget.filters[i]['enabled']=false;
          //             }
          //             widget.filters[index]['enabled']=!pre;
          //             if(widget.filters[index]['enabled']==true){
          //               widget.setFilter(widget.filters[index]['filter']);
          //             }
          //           });
          //         },
          //         child: Column(
          //           crossAxisAlignment:CrossAxisAlignment.start,
          //           children: [
          //             SizedBox(height:5),
          //             Container(
          //               padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          //               decoration: BoxDecoration(
          //                 color:(widget.filters[index]['enabled']==true)?Constants.themeGrey:Colors.white,
          //                 border:Border.all(width:1,color:Constants.themeSubheadingGrey),
          //                 borderRadius: BorderRadius.all(Radius.circular(10))
          //               ),
          //               child:Text("${widget.filters[index]['filter']}")
          //             ),
          //             SizedBox(height:5),
          //           ],
          //         ),
          //       );
          //     }
          //   )
          // )
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                children: List.generate(
                  widget.filters.length,
                  (index){
                    return GestureDetector(
                      onTap:(){
                        setState(() {
                          bool pre=widget.filters[index]['enabled'];
                          for(int i=0;i<widget.filters.length;i++){
                            widget.filters[i]['enabled']=false;
                          }
                          widget.filters[index]['enabled']=!pre;
                          if(widget.filters[index]['enabled']==true){
                            widget.setFilter(widget.filters[index]['filter']);
                          }
                        });
                      },
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            decoration: BoxDecoration(
                              color:(widget.filters[index]['enabled']==true)?Constants.themeGrey:Colors.white,
                              border:Border.all(width:1,color:Constants.themeSubheadingGrey),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:Text("${widget.filters[index]['filter']}")
                          ),
                        ],
                      ),
                    );
                  }
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}