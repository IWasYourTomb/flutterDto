import 'package:apiwithbloc/dto/model%20/countries/countries_model.dart';
import 'package:apiwithbloc/dto/model%20/global/global_model.dart';
import 'package:equatable/equatable.dart';

class Covid extends Equatable {
  Global? global;
  List<Countries>? countries;
  String? date;
  String? error;

  Covid({this.global, this.countries, this.date});

  Covid.withError(String message) {
    error = message;
  }

  Covid.fromJson(Map<String, dynamic> json) {
    global = json['Global'] != null ? Global.fromJson(json['Global']) : null;
    if (json['Countries'] != null) {
      countries = [];
      json['Countries'].forEach((v) {
        countries!.add(Countries.fromJson(v));
      });
    }
    date = json['Date'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};

    if (global != null) {
      data['Global'] = global!.toJson();
    }
    if (countries != null) {
      data['Countries'] = countries!.map((v) => v.toJson()).toList();
    }
    data['Date'] = date;
    return data;
  }

  @override
  List<Object?> get props => [global, countries];
}
