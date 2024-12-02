import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../network/remote/dio_helper.dart';
import 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);

  List business = [];

  void getBusiness() {
    emit(NewsGetBusinessLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'apiKey': '832d6133388348eb84a7620862a6a70c',
        'category': 'business',
      },
    ).then((value) {
      //debugPrint(value.data['articles'][0]['title']);
      business = value.data['articles'];
      emit(NewsGetBusinessSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(NewsGetBusinessErrorState(error: error.toString()));
    });
  }

  List sports = [];
  void getSports() {
    emit(NewsGetSportsLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'apiKey': '832d6133388348eb84a7620862a6a70c',
        'category': 'sports',
      },
    ).then((value) {
      //debugPrint(value.data['articles'][0]['title']);
      sports = value.data['articles'];
      debugPrint(sports[0]['title']);
      emit(NewsGetSportsSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(NewsGetSportsErrorState(error: error.toString()));
    });
  }

  List science = [];

  void getScience() {
    emit(NewsGetScienceLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'apiKey': '832d6133388348eb84a7620862a6a70c',
        'category': 'science',
      },
    ).then((value) {
      //debugPrint(value.data['articles'][0]['title']);
      science = value.data['articles'];
      debugPrint(science[0]['title']);
      emit(NewsGetScienceSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(NewsGetScienceErrorState(error: error.toString()));
    });
  }

  List<dynamic> search = [];

  void getSearch(String value) {
    emit(NewsGetSearchLoadingState());
    search = [];

    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'apiKey': '832d6133388348eb84a7620862a6a70c',
        'q': value,
      },
    ).then((value) {
      //debugPrint(value.data['articles'][0]['title']);
      search = value.data['articles'];
      emit(NewsGetSearchSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(NewsGetSearchErrorState(error: error.toString()));
    });
  }
}
