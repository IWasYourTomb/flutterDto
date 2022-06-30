import 'package:apiwithbloc/bloc/covid_bloc/covid_bloc.dart';
import 'package:apiwithbloc/ui/widget/card/card.dart';
import 'package:apiwithbloc/ui/widget/loading/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CovidBloc bloc = CovidBloc();

  @override
  void initState() {
    bloc.add(GetCovidList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildListCovid(),
    );
  }

  Widget _buildListCovid(){
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => bloc,
        child: BlocListener<CovidBloc, CovidState>(
          listener: (context, state){
            if(state is CovidError) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message!)));
            }
          },
          child: BlocBuilder<CovidBloc, CovidState>(
            builder: (context, state){
              if(state is CovidInitial){
                return loading();
              } else if(state is CovidLoading){
                return loading();
              } else if (state is CovidLoaded){
                return cardList(context, state.covidModel);
              } else if(state is CovidError){
                return Container();
              }
              return Container();
            },
          ),
        ),
      ) ,
    );
  }
}
