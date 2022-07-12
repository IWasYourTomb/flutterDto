import 'package:apiwithbloc/dto/model%20/user_result/result_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/result_model.dart';

class ResultMapper {
  static Results toModel(ResultDto dto) => Results(
        gender: dto.gender,
        name: dto.name,
        email: dto.email,
        login: dto.login,
        dob: dto.dob,
        registered: dto.registered,
        phone: dto.phone,
        cell: dto.cell,
        id: dto.id,
        picture: dto.picture,
        nat: dto.nat,
      );
}
