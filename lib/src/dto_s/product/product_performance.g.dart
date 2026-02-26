// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_performance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPerformance _$ProductPerformanceFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['product_id', 'product_name', 'sales', 'revenue'],
  );
  return ProductPerformance(
    productId: json['product_id'] as String,
    productName: json['product_name'] as String,
    sales: (json['sales'] as num).toInt(),
    revenue: (json['revenue'] as num).toDouble(),
    growthRate: (json['growth_rate'] as num?)?.toDouble() ?? 0.0,
  );
}

Map<String, dynamic> _$ProductPerformanceToJson(ProductPerformance instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'sales': instance.sales,
      'revenue': instance.revenue,
      'growth_rate': instance.growthRate,
    };
