
import 'dob/dob_model.dart';
import 'id/id_model.dart';
import 'login/login_model.dart';
import 'name/name_model.dart';
import 'picture/picture_model.dart';

class Results {
  String? gender;
  Name? name;
  String? email;
  Login? login;
  Dob? dob;
  Dob? registered;
  String? phone;
  String? cell;
  Id? id;
  PictureModel? picture;
  String? nat;

  Results(
      {this.gender,
        this.name,
        this.email,
        this.login,
        this.dob,
        this.registered,
        this.phone,
        this.cell,
        this.id,
        this.picture,
        this.nat});

  Results.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    email = json['email'];
    login = json['login'] != null ? Login.fromJson(json['login']) : null;
    dob = json['dob'] != null ? Dob.fromJson(json['dob']) : null;
    registered = json['registered'] != null
        ? Dob.fromJson(json['registered'])
        : null;
    phone = json['phone'];
    cell = json['cell'];
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    picture =
    json['picture'] != null ? PictureModel.fromJson(json['picture']) : null;
    nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gender'] = this.gender;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['email'] = this.email;
    if (this.login != null) {
      data['login'] = this.login!.toJson();
    }
    if (this.dob != null) {
      data['dob'] = this.dob!.toJson();
    }
    if (this.registered != null) {
      data['registered'] = this.registered!.toJson();
    }
    data['phone'] = this.phone;
    data['cell'] = this.cell;
    if (this.id != null) {
      data['id'] = this.id!.toJson();
    }
    if (this.picture != null) {
      data['picture'] = this.picture!.toJson();
    }
    data['nat'] = this.nat;
    return data;
  }
}










