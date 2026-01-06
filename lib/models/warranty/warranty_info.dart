
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'warranty_info.g.dart';
@JsonSerializable()
class WarrantyInfo extends Equatable {
  @JsonKey(required: true)
  final int durationMonths;

  @JsonKey(required: true)
  final String description;

  @JsonKey(defaultValue: [])
  final List<String> coveredItems;

  @JsonKey(defaultValue: [])
  final List<String> excludedItems;

  const WarrantyInfo({
    required this.durationMonths,
    required this.description,
    this.coveredItems = const [],
    this.excludedItems = const [],
  });

  @override
  List<Object?> get props => [durationMonths, description, coveredItems, excludedItems];

  factory WarrantyInfo.fromJson(Map<String, dynamic> json) => _$WarrantyInfoFromJson(json);
  Map<String, dynamic> toJson() => _$WarrantyInfoToJson(this);
}