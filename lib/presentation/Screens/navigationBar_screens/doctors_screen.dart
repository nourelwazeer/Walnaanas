import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    border: Border.all(color: Colors.teal),
                    color:  Colors.teal,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white
                  ),

                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'بحث',
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context , index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/03/02/78/26/1000_F_302782694_VftvTDVoDT6kYW3lXTqvp8bmH3inmpT8.jpg'),
                            radius: 27,
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('دكتور اي حد',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold,height: 1.3)),
                                Text('27 May 2022',style: TextStyle(fontSize: 12,color: Colors.grey,height: 1.3))
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context,index){
                return Container(height: 1,color: Colors.black,);
              },
              itemCount: 10),
        ),
      ],
    );
  }
}
