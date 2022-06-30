import 'package:apiwithbloc/dto/model%20/global/global_dto.dart';
import 'package:apiwithbloc/dto/model%20/global/global_model.dart';

class GlobalMapper{
  static Global toModel(GlobalDto dto) => Global(
    newConfirmed: dto.newConfirmed,
    totalConfirmed: dto.totalRecovered,
    newDeaths: dto.newDeaths,
    totalDeaths: dto.totalDeaths,
    newRecovered: dto.newRecovered,
    totalRecovered: dto.totalRecovered
  );
}