import 'package:json_annotation/json_annotation.dart';

part 'countries_dto.g.dart';

@JsonSerializable()
class CountriesDto {
  const CountriesDto({
    required this.country,
    required this.countryCode,
    required this.slug,
    required this.newConfirmed,
    required this.totalConfirmed,
    required this.newDeaths,
    required this.totalDeaths,
    required this.newRecovered,
    required this.totalRecovered,
    required this.date,
  });

  final String? country;
  final String? countryCode;
  final String? slug;
  final int? newConfirmed;
  final int? totalConfirmed;
  final int? newDeaths;
  final int? totalDeaths;
  final int? newRecovered;
  final int? totalRecovered;
  final String? date;

  factory CountriesDto.formJson(Map<String, dynamic> json) =>
      _$CountriesDtoFromJson(json);
}
