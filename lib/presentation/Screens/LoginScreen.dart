import 'package:flutter/material.dart';

import '../Widgets/LoginForm.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children:
          [
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
                  children:
                  [
                    SizedBox(height: 50,),

                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Image.asset('assets/images/Login.png',
                        height: 280,

                      ),
                    ),
                  ],
                ),
              ],
            ),

            SingleChildScrollView(
              child: Column(
                children:
                [
                  LoginForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}