import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
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
                image: AssetImage('assets/images/FirstScreen.gif'),
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
                        constraints: BoxConstraints.tightFor(width: 300, height: 50),
                        child: ElevatedButton(
                            onPressed: (){},
                            child: Text('يلا نسجل',
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
                            ),
                        ),
                      ),
                    ),
                    SizedBox(height: 0.1,),
                    Padding(padding: const EdgeInsets.all(15),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 300, height: 50),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text('سجلت قبل كدا',
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


