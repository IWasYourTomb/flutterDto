import 'package:apiwithbloc/bloc/covid_bloc/covid_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocInitial {
  BlocInitial._();

  static final List<BlocProvider> bloc = [
    BlocProvider<CovidBloc>(
      create: (_) => CovidBloc()..add(GetCovidList()),
    )
  ];

  static final List<BlocListener> listener = [
    BlocListener<CovidBloc, CovidState>(
      listener: (context, state) {
        if (state is CovidError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message!)));
        }
      },
    )
  ];
}
