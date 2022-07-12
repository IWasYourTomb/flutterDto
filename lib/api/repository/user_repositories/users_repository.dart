import 'package:apiwithbloc/api/provider/covid_provides/covid_provider.dart';
import 'package:apiwithbloc/api/provider/user_providers/users_provider.dart';
import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';
import 'package:apiwithbloc/dto/model%20/user/user.dart';

class UsersRepository {
  final _provider = UsersProvider();

  Future<Users> getUserList() async {
    return _provider.getUsersList();
  }
}

class NetworkError extends Error {}
