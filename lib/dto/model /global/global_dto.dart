import 'package:json_annotation/json_annotation.dart';

part 'global_dto.g.dart';

@JsonSerializable()
class GlobalDto {
  const GlobalDto({
    required this.newConfirmed,
    required this.totalConfirmed,
    required this.newDeaths,
    required this.totalDeaths,
    required this.newRecovered,
    required this.totalRecovered,
  });

  final int? newConfirmed;
  final int? totalConfirmed;
  final int? newDeaths;
  final int? totalDeaths;
  final int? newRecovered;
  final int? totalRecovered;

  factory GlobalDto.fromJson(Map<String,dynamic> json) =>
      _$GlobalDtoFromJson(json);
}
