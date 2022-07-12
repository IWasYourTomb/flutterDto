import 'package:apiwithbloc/dto/model%20/user_result/picture/picture_dto.dart';
import 'package:apiwithbloc/dto/model%20/user_result/picture/picture_model.dart';

class PictureMapper{
  static PictureModel toModel(PictureDto dto) => PictureModel(
    large: dto.large,
    medium: dto.medium,
    thumbnail: dto.thumbnail
  );
}