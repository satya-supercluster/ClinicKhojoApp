import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  final String heading;
  // no. of doctors
  const CommonAppBar({
    super.key,
    required this.title,
    required this.heading
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:20),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child:GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      size: 18,
                      Icons.arrow_back_ios,
                      color: Colors.red,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(color: Constants.themeGrey,fontSize: 12,fontWeight: FontWeight.w400),
                ),
              ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 5, 0, 0),
            child:Text(heading,style: TextStyle(color: Constants.themeHeadingBlue,fontSize: 20,fontWeight: FontWeight.w500),
          )
          ),
          SizedBox(height:16),
        ],
      ),
    );
  }
}