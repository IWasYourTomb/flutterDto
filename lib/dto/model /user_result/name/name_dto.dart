import 'package:json_annotation/json_annotation.dart';

part 'name_dto.g.dart';

@JsonSerializable()
class NameDto {
  NameDto({required this.title, required this.first, required this.last});

  final String? title;
  final String? first;
  final String? last;

  factory NameDto.fromJson(Map<String, dynamic> json) => _$NameDtoFromJson(json);
}
