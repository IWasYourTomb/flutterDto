// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountriesDto _$CountriesDtoFromJson(Map<String, dynamic> json) => CountriesDto(
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
      slug: json['slug'] as String?,
      newConfirmed: json['newConfirmed'] as int?,
      totalConfirmed: json['totalConfirmed'] as int?,
      newDeaths: json['newDeaths'] as int?,
      totalDeaths: json['totalDeaths'] as int?,
      newRecovered: json['newRecovered'] as int?,
      totalRecovered: json['totalRecovered'] as int?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$CountriesDtoToJson(CountriesDto instance) =>
    <String, dynamic>{
      'country': instance.country,
      'countryCode': instance.countryCode,
      'slug': instance.slug,
      'newConfirmed': instance.newConfirmed,
      'totalConfirmed': instance.totalConfirmed,
      'newDeaths': instance.newDeaths,
      'totalDeaths': instance.totalDeaths,
      'newRecovered': instance.newRecovered,
      'totalRecovered': instance.totalRecovered,
      'date': instance.date,
    };
