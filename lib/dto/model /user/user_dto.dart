import 'package:apiwithbloc/dto/model%20/user_result/result_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../user_result/info/info_model.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  const UserDto({required this.results, required this.info});

  final List<Results>? results;
  final Info? info;

  factory UserDto.formJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
