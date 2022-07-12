

import 'package:apiwithbloc/dto/model%20/user_result/info/info_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/info/info_model.dart';

class InfoMapper{
  static Info toModel(InfoDto dto) => Info(
    seed: dto.seed,
    version: dto.version,
    page: dto.page,
    results: dto.results
  );
}