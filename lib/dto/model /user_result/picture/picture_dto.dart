import 'package:json_annotation/json_annotation.dart';

part 'picture_dto.g.dart';

@JsonSerializable()
class PictureDto {
  PictureDto(
      {required this.large, required this.medium, required this.thumbnail});

  final String? large;
  final String? medium;
  final String? thumbnail;

  factory PictureDto.formJson(Map<String, dynamic> json) => _$PictureDtoFromJson(json);
}
