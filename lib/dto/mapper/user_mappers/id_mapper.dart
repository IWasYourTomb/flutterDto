

import 'package:apiwithbloc/dto/model%20/user_result/id/id_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/id/id_model.dart';

class IdMapper{
  static Id toModel(IdDto dto) => Id(
    name: dto.name,
    value: dto.value
  );
}