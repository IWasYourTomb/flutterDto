
import 'package:apiwithbloc/dto/model%20/user_result/street/street_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/street/street_model.dart';

class StreetMapper{
  static Street toModel(StreetDto dto) => Street(
    name: dto.name,
    number: dto.number
  );
}