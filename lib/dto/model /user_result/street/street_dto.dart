
import 'package:json_annotation/json_annotation.dart';

part 'street_dto.g.dart';

@JsonSerializable()
class StreetDto{
  StreetDto({required this.number,required this.name});

  final int? number;
  final String? name;

  factory StreetDto.fromJson(Map<String,dynamic> json) => _$StreetDtoFromJson(json);
}