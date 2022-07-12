
import 'package:apiwithbloc/dto/model%20/user_result/coordinates/coordinates_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/coordinates/coordinates_model.dart';

class CoordinatesMapper{
  static Coordinates toModel (CoordinatesDto dto) => Coordinates(
    latitude: dto.latitude,
    longitude: dto.longitude
  );
}