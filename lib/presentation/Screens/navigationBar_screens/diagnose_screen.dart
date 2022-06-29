import 'package:flutter/material.dart';

class DiagnoseScreen extends StatelessWidget {
  const DiagnoseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(
      'التشخيص',
      style: TextStyle(
        fontSize: 50,
        color: Colors.teal,
      ),
    ),);
  }
}
