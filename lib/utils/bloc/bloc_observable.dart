import 'dart:developer';

import 'package:apiwithbloc/utils/dev.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CovidBlocObservable extends BlocObserver {
  static const _name = 'BLOC';

  @override
  void onCreate(BlocBase bloc) {
    Dev.log('[${bloc.runtimeType}] Bloc created', name: _name);
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log('[${bloc.runtimeType}] | $event', name: _name);
    super.onEvent(bloc, event);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('[${bloc.runtimeType}]',
        name: _name, error: error, stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  void onClosed(BlocBase bloc) {
    Dev.log('[${bloc.runtimeType}] Bloc closed', name: _name);
    super.onClose(bloc);
  }
}
