import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/network/locale/cache_helper.dart';

import '../../../modules/business_screen.dart';
import '../../../modules/science_screen.dart';
import '../../../modules/sports_screen.dart';
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
    // const BottomNavigationBarItem(
    //   icon: Icon(Icons.settings),
    //   label: 'Settings',
    // ),
  ];

  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
    // const SettingsScreen(),
  ];

  void changeBottomNavState(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

  bool isDark = false;

  ThemeMode appTheme = ThemeMode.dark;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      emit(AppChangeModeState());
      isDark = fromShared;
    } else {
      isDark = !isDark;
    }

    CacheHelper.putBool(key: 'isDark', value: isDark).then((value) {
      emit(AppChangeModeState());
    });
  }
}
