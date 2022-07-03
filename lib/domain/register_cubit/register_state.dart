abstract class RegisterState {}

class RegisterInitial extends RegisterState {}
class UserRegisterLoadingState extends RegisterState {}
class UserRegisterErrorState extends RegisterState {
  final String error;

  UserRegisterErrorState(this.error);
}

class UserCreateSuccessState extends RegisterState {}
class UserCreateErrorState extends RegisterState {
  final String error;

  UserCreateErrorState(this.error);
}


class SocialChangePasswordVisibilityState extends RegisterState {}




