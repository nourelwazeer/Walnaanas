
import 'dart:async';


import 'package:flutter/material.dart';

import 'FirstScreen.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), navigateToSecondPage);
  }
  void navigateToSecondPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstScreen()));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Stack(
            alignment: Alignment.center,
            children:[

              //logo here
              Padding(
                padding: const EdgeInsets.all(90),
                child: Image(
                  image: AssetImage('assets/images/Logo.png'),
                ),
              ),
              SizedBox(height: 20,),


            ]
        ),
  ]
      ),
    ),
    );
  }
}




