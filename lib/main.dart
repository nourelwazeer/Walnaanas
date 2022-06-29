
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walnaanas/constants.dart';
import 'package:walnaanas/domain/main_layout/main_cubit.dart';
import 'package:walnaanas/presentation/Screens/FirstScreen.dart';
import 'package:walnaanas/presentation/Screens/HomeScreen.dart';








void main()
{
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => MainCubit()) ,
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(
          //   appBarTheme: const AppBarTheme(
          //     backgroundColor: KBackgroundColor,
          //   ),
          //   scaffoldBackgroundColor: KBackgroundColor,
          //   primaryColor: Colors.white,
          //   accentColor: KAccentColor,
          //   iconTheme: const IconThemeData(
          //       color: Colors.black),
          //   fontFamily: GoogleFonts
          //       .montserrat()
          //       .fontFamily,
          //   textTheme: GoogleFonts.montserratTextTheme(),
          //   inputDecorationTheme: InputDecorationTheme(
          //     filled: true,
          //     fillColor: const Color(0xFFF2F0E4),
          //     enabledBorder: OutlineInputBorder(
          //       borderSide: const BorderSide(color: Colors.white70),
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //     disabledBorder: OutlineInputBorder(
          //       borderSide: const BorderSide(color: Colors.white70),
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //     focusedBorder: OutlineInputBorder(
          //       borderSide: const BorderSide(color: Colors.white70),
          //       borderRadius: BorderRadius.circular(25),
          //     ),
          //   ),
          //
          //
          // ),
          home :HomeScreen(),


        ));
  }
}


