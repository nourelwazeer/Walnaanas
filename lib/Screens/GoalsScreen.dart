import 'dart:html';

import 'package:flutter/material.dart';


class GoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black12,
    body: Column(



    children: [
    Center(
    child: Text(' اهدافنا ...',
    style: TextStyle(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.w300,
    ),),
    ),
    Text(' * نهدف ان تكون بخير يا صديقى.',
    style: TextStyle(
    color: Colors.teal[200],
    fontSize: 30,
    fontWeight: FontWeight.w200,
    ),),
    Text('* نهدف ان نعيد ثقتك بنفسك. ',
    style: TextStyle(
    color: Colors.teal[200],
    fontSize: 30,
    fontWeight: FontWeight.w200,
    ),),
    Text(' * نوفر لك ركنا هادئا',
    style: TextStyle(
    color: Colors.teal[200],
    fontSize: 30,
    fontWeight: FontWeight.w200,
    ),),
    Text(' ',
    style: TextStyle(
    color: Colors.teal[200],
    fontSize: 30,
    fontWeight: FontWeight.w200,
    ),),
    Text(' ',
    style: TextStyle(
    color: Colors.teal[200],
    fontSize: 30,
    fontWeight: FontWeight.w200,
    ),),
    Text(' ',
    style: TextStyle(
    color: Colors.teal[200],
    fontSize: 30,
    fontWeight: FontWeight.w200,
    ),)
    ,
    ]
    ,
    )
    ,
    );
  }}