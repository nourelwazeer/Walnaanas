import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(
      'الصفحه الرئيسية',
      style: TextStyle(
        fontSize: 50,
        color: Colors.teal,
      ),
    ),);
  }
}
