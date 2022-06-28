import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}

class _FirstScreen extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
            Container(
              width: double.infinity,
              child: Stack(
          alignment: Alignment.center,

                children: [
                  Image( image:AssetImage('assets/images/FirstScreen.gif'),
                    fit: BoxFit.fitHeight,




          ),



                ],
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height:50 ,
              width: 300,
              child: RaisedButton(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30)
                ),
                onPressed:(){},
                color: Colors.white,
                child: Text(
                  'يلا نسجل ' ,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.teal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 0.1,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              height: 50,
              width: 300,
              child: RaisedButton(
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(30)
                ),
                onPressed:(){},
                color: Colors.white,
                child: Text(
                  '  سجلت قبل كدا   ' ,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.teal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),



        ],
      ) );
  }
}