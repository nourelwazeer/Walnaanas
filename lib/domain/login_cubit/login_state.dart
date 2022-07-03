abstract class LoginState {}

class LoginInitial extends LoginState {}
class UserLoginLoadingState extends LoginState {}
class UserLoginSuccessState extends LoginState {
  final dynamic value;

  UserLoginSuccessState(this.value);
}
class UserLoginErrorState extends LoginState {
  final String error;

  UserLoginErrorState(this.error);
}
class SocialChangePasswordVisibilityState extends LoginState {}

