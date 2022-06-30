import 'package:apiwithbloc/dto/model%20/countries/countries_model.dart';
import 'package:apiwithbloc/dto/model%20/global/global_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'covid_dto.g.dart';

@JsonSerializable()
class CovidDto {
  const CovidDto(
      {required this.global,
      required this.countries,
      required this.date,
      required this.error});

  final Global? global;
  final List<Countries>? countries;
  final String? date;
  final String? error;

  factory CovidDto.fromJson(Map<String, dynamic> json) =>
      _$CovidDtoFromJson(json);
}
