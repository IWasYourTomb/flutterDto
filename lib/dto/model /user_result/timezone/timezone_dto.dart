import 'package:json_annotation/json_annotation.dart';

part 'timezone_dto.g.dart';

@JsonSerializable()
class TimezoneDto {
  TimezoneDto({required this.offset, required this.description});

  final String? offset;
  final String? description;

  factory TimezoneDto.fromJson(Map<String,dynamic> json) => _$TimezoneDtoFromJson(json);
}
