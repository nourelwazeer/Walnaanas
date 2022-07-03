import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:walnaanas/domain/register_cubit/register_state.dart';

import '../../data/models/user_model.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());


  static RegisterCubit get(context) => BlocProvider.of(context);


  void userRegister({
    required String email,
    required String password,
    required String name,
  }) {
    emit(UserRegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ).then((value) {
      userCreate(
          email: email,
          name: name,
          uId: value.user!.uid);
      print(value.user!.uid);
    }).catchError((error){
      print(error.toString());
      emit(UserRegisterErrorState(error.toString()));
    });
  }


  void userCreate({
    required String email,
    required String name,
    required String uId,
  }){

    UserModel model = UserModel(
        email: email,
        name: name,
        userId: uId,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu69uuuW9aKsFfpBytgRFwFlVXSYyKzT3780oydIgMrUmyp5An_5AxA3P5RARIHh6jb3A&usqp=CAU',
    );
    FirebaseFirestore.instance.collection('users').doc(uId).set(model.toMap()).then((value) {
      emit(UserCreateSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(UserCreateErrorState(error.toString()));
    });
  }


  Icon suffix =  const Icon(Icons.visibility,color: Colors.teal);
  bool isVisible = true;
  void passwordVisible(){
    isVisible = !isVisible;
    suffix = Icon(isVisible ? Icons.visibility : Icons.visibility_off ,color: Colors.teal);
    emit(SocialChangePasswordVisibilityState());
  }
}

