import 'package:apiwithbloc/bloc/covid_bloc/covid_bloc.dart';

import 'package:apiwithbloc/utils/bloc/bloc_inital.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widget/error/error.dart';
import '../../../../widget/loading/loading.dart';
import '../card_home/card_home.dart';

Widget listHome() {
  return Container(
    margin: const EdgeInsets.all(8.0),
    child: MultiBlocListener(
      listeners: BlocInitial.listener,
      child: BlocBuilder<CovidBloc, CovidState>(
        builder: (context, state) {
          if (state is CovidInitial) {
            return loading();
          } else if (state is CovidLoading) {
            return loading();
          } else if (state is CovidLoaded) {
            return cardHomeList(context, state.covidModel);
          } else if (state is CovidError) {
            return error();
          }
          return Container();
        },
      ),
    ),
  );
}
