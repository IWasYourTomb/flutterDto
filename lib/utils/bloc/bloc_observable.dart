import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class CovidBlocObservable extends BlocObserver{
  @override
  void onEvent(Bloc bloc, Object? event){
    super.onEvent(bloc, event);
    log('onEvent - bloc: ${bloc.runtimeType}, event: ${event}');
  }

  void onError(BlocBase bloc, Object error, StackTrace stackTrace){
    super.onError(bloc, error, stackTrace);
    log('Error - bloc: ${bloc.runtimeType}, error: ${error}, stacktrace: ${stackTrace}');
  }
}