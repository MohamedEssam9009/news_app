import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubits/news_cubit/news_cubit.dart';
import 'package:news_app/shared/cubits/news_cubit/news_state.dart';

import '../shared/components/components.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var list = NewsCubit.get(context).science;

    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return articleBuilder(list, context);
      },
    );
  }
}
