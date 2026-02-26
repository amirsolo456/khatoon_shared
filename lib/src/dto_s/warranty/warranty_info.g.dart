// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warranty_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarrantyInfo _$WarrantyInfoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['duration_months', 'description']);
  return WarrantyInfo(
    durationMonths: (json['duration_months'] as num).toInt(),
    description: json['description'] as String,
    coveredItems:
        (json['covered_items'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const <String>[],
    excludedItems:
        (json['excluded_items'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        const <String>[],
  );
}

Map<String, dynamic> _$WarrantyInfoToJson(WarrantyInfo instance) =>
    <String, dynamic>{
      'duration_months': instance.durationMonths,
      'description': instance.description,
      'covered_items': instance.coveredItems,
      'excluded_items': instance.excludedItems,
    };
