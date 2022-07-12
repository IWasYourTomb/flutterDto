import 'package:apiwithbloc/dto/model%20/user_result/login/login_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/login/login_model.dart';

class LoginMapper {
  static Login toModel(LoginDto dto) => Login(
        uuid: dto.uuid,
        username: dto.username,
        password: dto.password,
        salt: dto.salt,
        md5: dto.md5,
        sha1: dto.sha1,
        sha256: dto.sha256,
      );
}
