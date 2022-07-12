

import 'package:apiwithbloc/dto/model%20/user_result/dob/dob_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/dob/dob_model.dart';

class DobMapper{
  static Dob toModel(DobDto dto) => Dob(
    date: dto.date,
    age: dto.age
  );
}