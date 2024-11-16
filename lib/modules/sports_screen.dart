import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_cubit/app_cubit_cubit.dart';
import '../shared/app_cubit/app_cubit_state.dart';
import '../shared/components/components.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var list = AppCubit.get(context).sports;

    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        return articleBuilder(list, context);
      },
    );
  }
}
