import 'package:clinic_khojo/pages/private/appointment_history_page.dart';
import 'package:clinic_khojo/pages/private/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int selectedIndex=0;
  bool showOptions=false;
  @override
  void initState() {
    selectedIndex=0;
    showOptions=false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            (selectedIndex==0)?HomePage():
            (selectedIndex==1)?AppointmentHistoryPage():
            Container(),
            Container(
              width:width,
              height:height,
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                color: Color(0xFFFFEEEE),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          "assets/icon/home.png",
                          color: selectedIndex == 0
                              ? Color(0xFFFF0B0B)
                              : Color(0xFF4d4d4d),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(CupertinoIcons.calendar),
                      color: selectedIndex == 1
                          ? Color(0xFFFF0B0B)
                          : Color(0xFF949494),
                      onPressed: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        // showDialog(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //     return LogoutDialog(
                        //       onLogoutConfirmed: () async {
                        //         try {
                        //           await FirebaseAuth.instance.signOut();} catch(e){}
                        //         try {
                        //           final GoogleSignIn googleSignIn = GoogleSignIn();
                        //           googleSignIn.signOut();} catch(e){}
                        //         SystemNavigator.pop();
                        //         print('Logout confirmed');
                        //       },
                        //     );
                        //   },
                        // );
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          "assets/icon/logout.png",
                          color: Color(0xFF4d4d4d),
                        ),
                      ),
                    ),
                    SizedBox(width: 40,),
                  ],
                ),
              ),
            ),
            Container(
              // width:width,
              // height:height,
              // alignment: Alignment.bottomRight,
              child:Positioned(
                bottom: 20, // Adjust the distance from the bottom
                right: 20, // Adjust the distance from the right
                child: GestureDetector(
                  onTap: () {
                    // Toggle the visibility of options
                    setState(() {
                      showOptions = !showOptions;
                    });
                  },
                  child: Container(
                    width: 64, // Adjust width as needed
                    height: 64, // Adjust height as needed
                    decoration: BoxDecoration(
                      color: showOptions ? Color(0xFFFF0B0B) : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: showOptions ? Colors.white : Color(0xFFFF0B0B), width: 2), // Set border color and width
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFF0B0B).withOpacity(0.2), // Set shadow color and opacity
                          spreadRadius: 2, // Set the spread radius of the shadow
                          blurRadius: 8, // Set the blur radius of the shadow
                          offset: Offset(0, 2), // Set the offset of the shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.chat_bubble_text_fill, // Replace with your desired icon
                            color: showOptions ? Colors.white : Color(0xFFFF0B0B),
                            size: 30,
                          ),
                          SizedBox(height: 3), // Add some spacing between the icon and text
                          Text(
                            'Support', // Replace with your desired text
                            style: TextStyle(
                              color: showOptions ? Colors.white : Color(0xFFFF0B0B),
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}