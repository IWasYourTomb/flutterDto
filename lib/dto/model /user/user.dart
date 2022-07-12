import '../user_result/info/info_model.dart';
import '../user_result/result_model.dart';

class Users {
  List<Results>? results;
  Info? info;
  String? error;

  Users({this.results, this.info});

  Users.withError(String message) {
    error = message;
  }

  Users.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add( Results.fromJson(v));
      });
    }
    info = json['info'] != null ?  Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data;
  }
}