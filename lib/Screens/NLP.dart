import 'dart:html';

import 'package:flutter/material.dart';


class GoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        body: Column(
          children: [

            TextFormField(
                decoration: InputDecoration(
                  labelText: ' اتكلم',
                  border: OutlineInputBorder(),

                )),
          ],
        ));
  }
}