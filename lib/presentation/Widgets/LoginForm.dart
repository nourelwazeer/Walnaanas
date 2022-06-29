

import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(children: [
              SizedBox(height: 16),
              TextFormField(
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'اسم المستخدم',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'البريد الاكترونى ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'كلمة المرور' ,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
               // color: Color(0xFF00695C),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: RaisedButton(
                    elevation: 10 ,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(30),
                    ),
                    onPressed: () {
                    },
                    color: Colors.teal,

                    child: Text(
                      'تسجيل',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20 ,

                      )
                      ,
                    ),
                  ),
                ),
              ),
            ]
            ),
          ),
        ),
      ],
    );
  }
}