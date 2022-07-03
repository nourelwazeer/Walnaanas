
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:walnaanas/constants.dart';
import 'package:walnaanas/domain/main_layout/main_cubit.dart';
import 'package:walnaanas/presentation/Screens/FirstScreen.dart';
import 'package:walnaanas/presentation/Screens/HomeScreen.dart';
import 'package:walnaanas/presentation/Screens/register/register_screen.dart';

import 'bloc_observer.dart';
import 'firebase_options.dart';


void main() async{
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => MainCubit()..getPosts()) ,
        ],
        child:  MaterialApp(
            localizationsDelegates: [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
            ],
          debugShowCheckedModeBanner: false,
          home :RegisterScreen(),


        ));
  }
}


