

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/Widgets/constants.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  void userLogin({
    required String email,
    required String password,
  }) {
    emit(UserLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password
    ).then((value) {
      userId = value.user!.uid;
      emit(UserLoginSuccessState(value.user!.uid));
    }).catchError((error){
      emit(UserLoginErrorState(error.toString()));
    });
  }
  Icon suffix = const Icon(Icons.visibility,color: Colors.teal,);
  bool isVisible = true;
  void passwordVisible(){
    isVisible = !isVisible;
    suffix = Icon(isVisible ? Icons.visibility:Icons.visibility_off,color: Colors.teal,);
    emit(SocialChangePasswordVisibilityState());
  }
}
