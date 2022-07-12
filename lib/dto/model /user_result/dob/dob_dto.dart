import 'package:json_annotation/json_annotation.dart';

part 'dob_dto.g.dart';

@JsonSerializable()
class DobDto{
    const DobDto({
      required this.date,
      required this.age
});

  final String? date;
  final int? age;

  factory DobDto.fromJson(Map<String,dynamic> json) => _$DobDtoFromJson(json);
}