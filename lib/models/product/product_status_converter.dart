import 'package:json_annotation/json_annotation.dart';

import '../enums.dart';

part 'product_status_converter.g.dart';

@JsonSerializable()
class  ProductStatusConverter
    implements JsonConverter<ReproductionStatus, String> {
  const ProductStatusConverter();

  @override
  ReproductionStatus fromJson(String json) {
    return ReproductionStatus.values.firstWhere((e) => e.name == json);
  }

  @override
  String toJson(ReproductionStatus status) => status.name;
}
