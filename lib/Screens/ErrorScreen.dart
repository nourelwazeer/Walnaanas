
import 'package:flutter/material.dart';


class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: 100,
              child: Image(image: AssetImage('assets/images/ErrorIM.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(' ! اّسفين ! فى خطأ حصل',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w200,
          ),),
        SizedBox(height: 70,),
        Padding(
        padding: const EdgeInsets.all(15),
    child: Container(
    height:50 ,
    width: 200,
    child: RaisedButton(
    elevation: 20,
    shape: RoundedRectangleBorder(
    borderRadius:BorderRadius.circular(30)
    ),
    onPressed:(){},
    color: Colors.red,
    child: Text(
    'حاول مرة تانيه' ,
    style: TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.w400,
    ),),))),
      ],
      ),

    );}}