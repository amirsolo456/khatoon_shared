// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingInfo _$ShippingInfoFromJson(Map<String, dynamic> json) => ShippingInfo(
  cost: (json['cost'] as num?)?.toDouble() ?? 0.0,
  freeShipping: json['free_shipping'] as bool? ?? false,
  freeShippingThreshold:
      (json['free_shipping_threshold'] as num?)?.toDouble() ?? 0.0,
  availableMethods:
      (json['available_methods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      ['پست', 'تیپاکس'],
  estimatedDaysMin: (json['estimated_days_min'] as num?)?.toInt() ?? 2,
  estimatedDaysMax: (json['estimated_days_max'] as num?)?.toInt() ?? 5,
);

Map<String, dynamic> _$ShippingInfoToJson(ShippingInfo instance) =>
    <String, dynamic>{
      'cost': instance.cost,
      'free_shipping': instance.freeShipping,
      'free_shipping_threshold': instance.freeShippingThreshold,
      'available_methods': instance.availableMethods,
      'estimated_days_min': instance.estimatedDaysMin,
      'estimated_days_max': instance.estimatedDaysMax,
    };
