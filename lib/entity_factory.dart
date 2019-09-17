import 'package:flutter_dio_test/details_model_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "DetailsModelEntity") {
      return DetailsModelEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}