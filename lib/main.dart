import 'package:clinic_khojo/pages/private/appointment_history_page.dart';
import 'package:clinic_khojo/pages/private/search_doctor_screen.dart';
import 'package:clinic_khojo/pages/private/doctors_profile_page.dart';
import 'package:clinic_khojo/pages/public/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinic Khojo',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
