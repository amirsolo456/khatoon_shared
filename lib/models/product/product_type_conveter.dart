import 'package:json_annotation/json_annotation.dart';

import '../enums.dart';

part 'product_type_conveter.g.dart';

@JsonSerializable()
class AnimalTypeConverter implements JsonConverter<AnimalType, String> {
  const AnimalTypeConverter();

  @override
  AnimalType fromJson(String json) {
    return AnimalType.values.firstWhere((e) => e.name == json);
  }

  @override
  String toJson(AnimalType type) => type.name;
}

class HealthStatusConverter implements JsonConverter<HealthStatus, String> {
  const HealthStatusConverter();

  @override
  HealthStatus fromJson(String json) {
    return HealthStatus.values.firstWhere((e) => e.name == json);
  }

  @override
  String toJson(HealthStatus status) => status.name;
}
