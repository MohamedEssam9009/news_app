sealed class AppState {}

final class AppInitial extends AppState {}

final class AppChangeBottomNavState extends AppState {}

final class AppGetBusinessLoadingState extends AppState {}

final class AppGetBusinessSuccessState extends AppState {}

final class AppGetBusinessErrorState extends AppState {
  final String error;

  AppGetBusinessErrorState({required this.error});
}

final class AppGetSportsLoadingState extends AppState {}

final class AppGetSportsSuccessState extends AppState {}

final class AppGetSportsErrorState extends AppState {
  final String error;

  AppGetSportsErrorState({required this.error});
}

final class AppGetScienceLoadingState extends AppState {}

final class AppGetScienceSuccessState extends AppState {}

final class AppGetScienceErrorState extends AppState {
  final String error;

  AppGetScienceErrorState({required this.error});
}
