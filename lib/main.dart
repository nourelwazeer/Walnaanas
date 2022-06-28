
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walnaanas/Screens/FirstScreen.dart';
import 'package:walnaanas/Screens/PrivacyScreen.dart';
import 'package:walnaanas/Screens/LoginScreenn.dart';
import 'package:walnaanas/Screens/LoginScreen.dart';
import 'package:walnaanas/Screens/ErrorScreen.dart';
import 'package:walnaanas/Screens/HomeScreen.dart';
import'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:http/http.dart' show get;
import 'package:walnaanas/Screens/Splash_Screen.dart';
import 'package:walnaanas/constants.dart';








void main()
{
  runApp(MyAPP());
}

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: KBackgroundColor,
        ),
        scaffoldBackgroundColor: KBackgroundColor,
        primaryColor: Colors.white,
        accentColor: KAccentColor,
        iconTheme: IconThemeData(
            color: Colors.black),
        fontFamily: GoogleFonts
            .montserrat()
            .fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFFF2F0E4),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white70),
            borderRadius: BorderRadius.circular(25),
          ),
        ),


      ),
      home :FirstScreen(),


    );
  }
}


