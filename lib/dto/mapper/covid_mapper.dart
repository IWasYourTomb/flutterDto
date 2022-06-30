import 'package:apiwithbloc/dto/model%20/covid/covid_dto.dart';
import 'package:apiwithbloc/dto/model%20/covid/covid_model.dart';

class CovidMapper{
    static Covid toModel(CovidDto dto) => Covid(
      global: dto.global,
      countries: dto.countries,
      date: dto.date,
    );
}