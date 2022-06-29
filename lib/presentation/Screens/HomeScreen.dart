import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walnaanas/domain/main_layout/main_state.dart';

import '../../domain/main_layout/main_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit , MainState>(
        builder: (context, state ) {
          var cubit = MainCubit.get(context);
          return Scaffold(
            body: cubit.bottomNavModules[cubit.currentIndex],
            bottomNavigationBar: CurvedNavigationBar(
              items: const[
                Icon(Icons.home, size: 30, color: Colors.white,),
                Icon(Icons.speaker_notes_outlined, size: 30, color: Colors.white,),
                Icon(Icons.psychology_outlined, size: 30, color: Colors.white,),
                Icon(Icons.person, size: 30, color: Colors.white,),
              ],
              index: cubit.currentIndex,
              backgroundColor: Colors.transparent,
              color: Colors.teal,
              buttonBackgroundColor: Colors.teal,
              height: 50,
              animationDuration: const Duration(milliseconds: 300),
              onTap: (index){
                cubit.changeBottomNav(index);
              },
            ),
          );
        } ,
        listener: (context, state ){});
  }
}