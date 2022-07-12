import 'package:apiwithbloc/dto/model%20/user_result/picture/picture_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dob/dob_model.dart';
import 'id/id_model.dart';
import 'login/login_model.dart';
import 'name/name_model.dart';

part 'result_dto.g.dart';

@JsonSerializable()
class ResultDto {
  ResultDto(
      {required this.gender,
      required this.name,
      required this.email,
      required this.login,
      required this.dob,
      required this.registered,
      required this.phone,
      required this.cell,
      required this.id,
      required this.picture,
      required this.nat});

  final String? gender;
  final Name? name;
  final String? email;
  final Login? login;
  final Dob? dob;
  final Dob? registered;
  final String? phone;
  final String? cell;
  final Id? id;
  final PictureModel? picture;
  final String? nat;

  factory ResultDto.fromJson(Map<String,dynamic> json) => _$ResultDtoFromJson(json);
}
