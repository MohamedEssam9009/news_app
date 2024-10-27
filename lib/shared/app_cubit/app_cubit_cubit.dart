import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_cubit_state.dart';


class AppCubitCubit extends Cubit<AppCubitState> {
  AppCubitCubit() : super(AppCubitInitial());

  static AppCubitCubit get(context) => BlocProvider.of<AppCubitCubit>(context);
}
