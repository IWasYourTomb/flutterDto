import 'package:apiwithbloc/app.dart';
import 'package:apiwithbloc/utils/preferences%20/preferences.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  await init();
}

Future<void> init() async{
  await Preferences().init();
}