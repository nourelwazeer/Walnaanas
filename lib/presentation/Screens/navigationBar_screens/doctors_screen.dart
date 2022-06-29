import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(
      'طبيبك',
      style: TextStyle(
        fontSize: 50,
        color: Colors.teal,
      ),
    ),);
  }
}
