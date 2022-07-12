import 'package:apiwithbloc/dto/model%20/user_result/name/name_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/name/name_model.dart';

class NameMapper{
  static Name toModel(NameDto dto) => Name(
    title: dto.title,
    first: dto.first,
    last: dto.last
  );
}