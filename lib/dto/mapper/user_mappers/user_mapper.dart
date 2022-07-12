
import 'package:apiwithbloc/dto/model%20/user/user.dart';
import 'package:apiwithbloc/dto/model%20/user/user_dto.dart';

class UserMapper{
  static Users toModel (UserDto dto) => Users(
    results: dto.results,
    info: dto.info
  );
}