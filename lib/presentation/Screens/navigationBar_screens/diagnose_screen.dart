import 'package:flutter/material.dart';

class DiagnoseScreen extends StatelessWidget {
  const DiagnoseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('التشخيص'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ندخل في الموضوع ',textAlign: TextAlign.start,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 5
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      labelText: 'ابدأ اتكلم هنا ....',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text('خلصت',style: TextStyle(color: Colors.white),),
                  color: Colors.teal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
