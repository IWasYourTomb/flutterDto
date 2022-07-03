import 'package:apiwithbloc/app.dart';
import 'package:apiwithbloc/utils/bloc/bloc_observable.dart';
import 'package:apiwithbloc/utils/preferences%20/preferences.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());

  HydratedBlocOverrides.runZoned(() => runApp(const MyApp()),
      blocObserver: CovidBlocObservable(), storage: storage);
  await init();
}

Future<void> init() async {
  await Preferences().init();
}
