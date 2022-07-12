// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timezone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimezoneDto _$TimezoneDtoFromJson(Map<String, dynamic> json) => TimezoneDto(
      offset: json['offset'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TimezoneDtoToJson(TimezoneDto instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'description': instance.description,
    };
