
sealed class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsGetBusinessLoadingState extends NewsState {}

final class NewsGetBusinessSuccessState extends NewsState {}

final class NewsGetBusinessErrorState extends NewsState {
  final String error;

  NewsGetBusinessErrorState({required this.error});
}

final class NewsGetSportsLoadingState extends NewsState {}

final class NewsGetSportsSuccessState extends NewsState {}

final class NewsGetSportsErrorState extends NewsState {
  final String error;

  NewsGetSportsErrorState({required this.error});
}

final class NewsGetScienceLoadingState extends NewsState {}

final class NewsGetScienceSuccessState extends NewsState {}

final class NewsGetScienceErrorState extends NewsState {
  final String error;

  NewsGetScienceErrorState({required this.error});
}

final class NewsGetSearchLoadingState extends NewsState {}

final class NewsGetSearchSuccessState extends NewsState {}

final class NewsGetSearchErrorState extends NewsState {
  final String error;

  NewsGetSearchErrorState({required this.error});
}
