import 'package:apiwithbloc/bloc/covid_bloc/covid_bloc.dart';
import 'package:apiwithbloc/bloc/navigation_cubit/navigation_cubit.dart';

import 'package:apiwithbloc/bloc/theme_bloc/theme_bloc.dart';
import 'package:apiwithbloc/bloc/user_bloc/users_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocInitial {
  BlocInitial._();

  static final List<BlocProvider> bloc = [
    BlocProvider<CovidBloc>(create: (_) => CovidBloc()..add(GetCovidList())),
    BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()),
    BlocProvider<UsersBloc>(create: (_) => UsersBloc()..add(GetUserList())),
    BlocProvider<NavigationCubit>(create: (_) => NavigationCubit())
  ];

  static final List<BlocListener> listener = [
    BlocListener<CovidBloc, CovidState>(
      listener: (context, state) {
        if (state is CovidError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message!)));
        }
      },
    ),
    BlocListener<UsersBloc, UsersState>(
      listener: (context, state) {
        if (state is UsersError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message!)));
        }
      },
    ),
  ];
}
