abstract class MainState {}
class MainInitial extends MainState {}
class ChangeBottomNavState extends MainState{}
class GetDoctorsLoadingState extends MainState{}
class GetDoctorsSuccessState extends MainState{}
class GetDoctorsErrorState extends MainState{
  final String error;
  GetDoctorsErrorState(this.error);
}