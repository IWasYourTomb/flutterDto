import 'package:apiwithbloc/bloc/covid_bloc/covid_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocInitial {
  BlocInitial._();

  static final List<BlocProvider> bloc = [
    BlocProvider<CovidBloc>(
      create: (_) => CovidBloc()..add(GetCovidList()),
    )
  ];
}
