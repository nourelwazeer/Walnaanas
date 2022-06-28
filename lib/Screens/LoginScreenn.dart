import 'package:flutter/material.dart';

class LoginScreenn extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
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
          SizedBox(height:20,),

          Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset('assets/images/Login2.png',
              height: 280,

            ),
          ),
        ],
      ),
      ],
    ),

       Padding(
         padding: const EdgeInsets.all(15),
         child: Column(
          children:
             [
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
            SizedBox(height: 20,),
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
            SizedBox(height: 70),

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
      color: Colors.teal,
      child: Text(
      ' تسجيل   ' ,
      style: TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      ),
      )))),
          ],
      ),
       ),
    ])) );
  }
}