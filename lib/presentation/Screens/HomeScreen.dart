
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'homescreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String str = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color : Colors.teal,
        backgroundColor: Colors.white,
        height: 50,
          items: [
            Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.speaker_notes_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.psychology_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              setState(() {
                str = 'الصفحة الرئيسية';
              });
            } else if (index == 1) {
              setState(() {
                str = 'التشخيص';
              });
            } else if (index == 2) {
              setState(() {
                str = 'طبيبك';
              });
            } else {
              setState(() {
                str = 'حسابى';
              });
            }
          },
        animationDuration: Duration(
          milliseconds: 200,
        )),
        body: Center(
          child: Text(
            str,
            style: TextStyle(
              fontSize: 50,
              color: Colors.teal,
            ),
          ),
        ),
    );
  }
}