// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CovidDto _$CovidDtoFromJson(Map<String, dynamic> json) => CovidDto(
      global: json['global'] == null
          ? null
          : Global.fromJson(json['global'] as Map<String, dynamic>),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Countries.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$CovidDtoToJson(CovidDto instance) => <String, dynamic>{
      'global': instance.global,
      'countries': instance.countries,
      'date': instance.date,
      'error': instance.error,
    };
