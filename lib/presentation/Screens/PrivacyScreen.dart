import 'dart:ui';

import 'package:flutter/material.dart';


class PrivacyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Stack(
            children:
            [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),

                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  SizedBox(height: 50,),

                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Image.asset('assets/images/PrivacyImage.png',
                      height: 280,

                    ),
                  ),
                  Text(' لا تقلق يا صديقي ...           '
                      'بياناتك اتخزنت بنجاح ولا يمكن لاحد الاطلاع عليها ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color:Colors.teal,

                    ),),

                ],
              ),
            ],
          ),

        ],
      ),

    );}}