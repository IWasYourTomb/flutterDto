import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://api.covid19api.com/summary';

  Future<Covid> getCovidList() async {
    try {
      Response response = await _dio.get(_url);
      return Covid.fromJson(response.data);
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print('$error, $stacktrace');
      }
      return Covid.withError('$error, $stacktrace');
    }
  }
}
