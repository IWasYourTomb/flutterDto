

import 'package:apiwithbloc/dto/model%20/user_result/timezone/timezone_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/timezone/timezone_model.dart';

class TimezoneMapper{
  static Timezone toModel(TimezoneDto dto) => Timezone(
    offset: dto.offset,
    description: dto.description
  );
}