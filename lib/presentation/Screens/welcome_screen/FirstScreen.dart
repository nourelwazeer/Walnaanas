import 'package:flutter/material.dart';
import 'package:walnaanas/presentation/Screens/login_screen/login_screen.dart';
import 'package:walnaanas/presentation/Screens/register/register_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

     Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          color: Colors.white,
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image(
                image: const AssetImage('assets/images/FirstScreen.gif'),
                fit: BoxFit.cover,
                height: size.height,
              ),
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    Padding
                      (
                      padding: const EdgeInsets.all(15),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(width: 300, height: 50),
                        child: ElevatedButton(
                            onPressed: (){
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RegisterScreen()), (route) => false);
                            },
                            child: const Text('يلا نسجل',
                              style:  TextStyle
                                (fontSize: 30,
                                color: Colors.teal, fontWeight: FontWeight.w400,),
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                    )
                                ),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(Colors.teal),
                              overlayColor: MaterialStateProperty.all(Colors.grey.shade300),
                            ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 0.1,),
                    Padding(padding: const EdgeInsets.all(15),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(width: 300, height: 50),
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
                          },
                          child: const Text('سجلت قبل كدا',
                            style: TextStyle
                              (fontSize: 30,
                              color: Colors.teal, fontWeight: FontWeight.w400,),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                )
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(Colors.teal),
                            overlayColor: MaterialStateProperty.all(Colors.grey.shade300),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}


