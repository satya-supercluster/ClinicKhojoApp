import 'package:clinic_khojo/utils/constants.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  final String title;

  CommonAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
      child: Row(
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
              style: TextStyle(color: Constants.themeGrey,fontSize: 16,fontWeight: FontWeight.w400),
            ),
          ],
      ),
    );
  }
}
