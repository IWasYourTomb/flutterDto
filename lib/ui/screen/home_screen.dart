import 'package:apiwithbloc/bloc/covid_bloc/covid_bloc.dart';
import 'package:apiwithbloc/ui/widget/card/card.dart';
import 'package:apiwithbloc/ui/widget/error/error.dart';
import 'package:apiwithbloc/ui/widget/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: BlocListener<CovidBloc, CovidState>(
          listener: (context, state) {
            if (state is CovidError) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message!)));
            }
          },
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
      ),
    );
  }
}
