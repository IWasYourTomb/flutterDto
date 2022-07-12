import 'package:json_annotation/json_annotation.dart';

part 'info_dto.g.dart';

@JsonSerializable()
class InfoDto {
  InfoDto(
      {required this.seed,
      required this.results,
      required this.page,
      required this.version});

  final String? seed;
  final int? results;
  final int? page;
  final String? version;

  factory InfoDto.fromJson(Map<String,dynamic> json) =>  _$InfoDtoFromJson(json);
}
