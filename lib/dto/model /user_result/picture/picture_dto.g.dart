// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PictureDto _$PictureDtoFromJson(Map<String, dynamic> json) => PictureDto(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$PictureDtoToJson(PictureDto instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
