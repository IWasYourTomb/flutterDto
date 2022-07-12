import 'package:apiwithbloc/dto/model%20/user/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class UsersProvider {
  final Dio _dio = Dio();
  final String _url = 'https://randomuser.me/api/?results=50';

  Future<Users> getUsersList() async {
    try {
      Response response = await _dio.get(_url);
      return Users.fromJson(response.data);
    } catch (error, stacktrace) {
      if (kDebugMode) {
        print('$error, $stacktrace');
      }
      return Users.withError('$error, $stacktrace');
    }
  }
}
