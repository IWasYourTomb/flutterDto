import 'package:apiwithbloc/dto/model%20/countries/countries_dto.dart';
import 'package:apiwithbloc/dto/model%20/countries/countries_model.dart';

class CountriesMapper {
  static Countries toModel(CountriesDto dto) => Countries(
      country: dto.country,
      countryCode: dto.countryCode,
      slug: dto.slug,
      newConfirmed: dto.newConfirmed,
      totalConfirmed: dto.totalConfirmed,
      newDeaths: dto.newDeaths,
      totalDeaths: dto.newDeaths,
      newRecovered: dto.newRecovered,
      totalRecovered: dto.totalRecovered,
      date: dto.date);
}
