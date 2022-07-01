import 'package:apiwithbloc/bloc/covid_bloc/covid_bloc.dart';
import 'package:apiwithbloc/utils/bloc/bloc_inital.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../card/card.dart';
import '../error/error.dart';
import '../loading/loading.dart';

Widget list() {
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
            return cardList(context, state.covidModel);
          } else if (state is CovidError) {
            return error();
          }
          return Container();
        },
      ),
    ),
  );
}
