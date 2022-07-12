import 'package:json_annotation/json_annotation.dart';

part 'id_dto.g.dart';

@JsonSerializable()
class IdDto{
  IdDto({required this.name, required this.value});

  final String? name;
  final String? value;

  factory IdDto.fromJson(Map<String, dynamic> json) => _$IdDtoFromJson(json);
}