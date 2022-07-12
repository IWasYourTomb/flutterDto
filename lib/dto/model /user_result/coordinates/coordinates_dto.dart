import 'package:json_annotation/json_annotation.dart';

part 'coordinates_dto.g.dart';

@JsonSerializable()
class CoordinatesDto {
  const CoordinatesDto({required this.latitude, required this.longitude});

  final String? latitude;
  final String? longitude;

  factory CoordinatesDto.fromJson(Map<String, dynamic> json) => _$CoordinatesDtoFromJson(json);
}
