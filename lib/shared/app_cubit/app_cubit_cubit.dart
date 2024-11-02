import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../modules/business_screen.dart';
import '../../modules/science_screen.dart';
import '../../modules/sports_screen.dart';

import '../../modules/settings_screen.dart';
import '../network/remote/dio_helper.dart';
import 'app_cubit_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of<AppCubit>(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'Business',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: 'Science',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: 'Settings',
    ),
  ];

  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
    const SettingsScreen(),
  ];

  void changeBottomNavState(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

  List business = [];

  void getBusiness() {
    emit(AppGetBusinessLoadingState());

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
      emit(AppGetBusinessSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(AppGetBusinessErrorState(error: error.toString()));
    });
  }

  List sports = [];
  void getSports() {
    emit(AppGetSportsLoadingState());

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
      emit(AppGetSportsSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(AppGetSportsErrorState(error: error.toString()));
    });
  }

  List science = [];

  void getScience() {
    emit(AppGetScienceLoadingState());

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
      emit(AppGetScienceSuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(AppGetScienceErrorState(error: error.toString()));
    });
  }
}
