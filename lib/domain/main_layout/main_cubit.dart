import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walnaanas/data/models/doctor_model.dart';
import 'package:walnaanas/presentation/Screens/navigationBar_screens/diagnose_screen.dart';
import 'package:walnaanas/presentation/Screens/navigationBar_screens/doctors_screen.dart';
import 'package:walnaanas/presentation/Screens/navigationBar_screens/profile_screen.dart';
import '../../presentation/Screens/navigationBar_screens/start_screen.dart';
import 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomNavModules = [
    const StartScreen(),
    const DiagnoseScreen(),
    const DoctorsScreen(),
    const ProfileScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }

  List<DoctorModel> doctors = [];


  void getPosts() {
    emit(GetDoctorsLoadingState());
    FirebaseFirestore.instance.collection('Doctors').get().then((value) {
      value.docs.forEach((element) {
        doctors.add(DoctorModel.fromJson(element.data()));
      });
      print(doctors[0].name);
      emit(GetDoctorsSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetDoctorsErrorState(error.toString()));
    });
  }

}
