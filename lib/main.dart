import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:walnaanas/data/local/cash_helper.dart';
import 'package:walnaanas/domain/main_layout/main_cubit.dart';
import 'package:walnaanas/presentation/Screens/login_screen/login_screen.dart';
import 'package:walnaanas/presentation/Screens/welcome_screen/FirstScreen.dart';
import 'bloc_observer.dart';
import 'firebase_options.dart';


void main() async{
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CashHelper.init();
  runApp( MyAPP());
}

class MyAPP extends StatelessWidget {
   MyAPP({Key? key}) : super(key: key);

  var userId = CashHelper.getData(key: 'uId');
  Widget? startScreen;

  @override
  Widget build(BuildContext context) {
    if(userId != null){
      startScreen = LoginScreen();
    }else{
      startScreen = FirstScreen();
    }
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
          home :startScreen,


        ));
  }
}


